// <autogenerated>
//   This file was generated by dddappp code generator.
//   Any changes made to this file manually will be lost next time the file is regenerated.
// </autogenerated>

module aptos_test_proj1::order_ship_group {
    use aptos_std::table_with_length::{Self, TableWithLength};
    use aptos_test_proj1::order_item_ship_group_association::{Self, OrderItemShipGroupAssociation};
    use std::string::String;
    friend aptos_test_proj1::order_create_logic;
    friend aptos_test_proj1::order_remove_item_logic;
    friend aptos_test_proj1::order_update_item_quantity_logic;
    friend aptos_test_proj1::order_update_estimated_ship_date_logic;
    friend aptos_test_proj1::order_add_order_ship_group_logic;
    friend aptos_test_proj1::order_cancel_order_ship_group_quantity_logic;
    friend aptos_test_proj1::order_remove_order_ship_group_item_logic;
    friend aptos_test_proj1::order_remove_order_ship_group_logic;
    friend aptos_test_proj1::order;

    const EID_ALREADY_EXISTS: u64 = 101;
    const EID_DATA_TOO_LONG: u64 = 102;

    struct OrderShipGroup has store {
        ship_group_seq_id: u8,
        shipment_method: String,
        order_item_ship_group_associations: TableWithLength<String, OrderItemShipGroupAssociation>,
    }

    public fun ship_group_seq_id(order_ship_group: &OrderShipGroup): u8 {
        order_ship_group.ship_group_seq_id
    }

    public fun shipment_method(order_ship_group: &OrderShipGroup): String {
        order_ship_group.shipment_method
    }

    public(friend) fun set_shipment_method(order_ship_group: &mut OrderShipGroup, shipment_method: String) {
        order_ship_group.shipment_method = shipment_method;
    }

    public(friend) fun add_order_item_ship_group_association(order_ship_group: &mut OrderShipGroup, order_item_ship_group_association: OrderItemShipGroupAssociation) {
        let key = order_item_ship_group_association::product_id(&order_item_ship_group_association);
        table_with_length::add(&mut order_ship_group.order_item_ship_group_associations, key, order_item_ship_group_association);
    }

    public(friend) fun remove_order_item_ship_group_association(order_ship_group: &mut OrderShipGroup, product_id: String) {
        let order_item_ship_group_association = table_with_length::remove(&mut order_ship_group.order_item_ship_group_associations, product_id);
        order_item_ship_group_association::drop_order_item_ship_group_association(order_item_ship_group_association);
    }

    public(friend) fun borrow_mut_order_item_ship_group_association(order_ship_group: &mut OrderShipGroup, product_id: String): &mut OrderItemShipGroupAssociation {
        table_with_length::borrow_mut(&mut order_ship_group.order_item_ship_group_associations, product_id)
    }

    public fun borrow_order_item_ship_group_association(order_ship_group: &OrderShipGroup, product_id: String): &OrderItemShipGroupAssociation {
        table_with_length::borrow(&order_ship_group.order_item_ship_group_associations, product_id)
    }

    public fun order_item_ship_group_associations_contains(order_ship_group: &OrderShipGroup, product_id: String): bool {
        table_with_length::contains(&order_ship_group.order_item_ship_group_associations, product_id)
    }

    public fun order_item_ship_group_associations_length(order_ship_group: &OrderShipGroup): u64 {
        table_with_length::length(&order_ship_group.order_item_ship_group_associations)
    }

    public(friend) fun new_order_ship_group(
        ship_group_seq_id: u8,
        shipment_method: String,
    ): OrderShipGroup {
        OrderShipGroup {
            ship_group_seq_id,
            shipment_method,
            order_item_ship_group_associations: table_with_length::new<String, OrderItemShipGroupAssociation>(),
        }
    }

    // Please note that when the hierarchical structure of entities within an aggregate exceeds three levels,
    // currently the 'drop_{entity_name}' function for entities from the second to the third-to-last level cannot be generated.
    /*
    public(friend) fun drop_order_ship_group(order_ship_group: OrderShipGroup) {
        let OrderShipGroup {
            ship_group_seq_id: _,
            shipment_method: _,
            order_item_ship_group_associations,
        } = order_ship_group;
        table_with_length::destroy_empty<String, OrderItemShipGroupAssociation>(order_item_ship_group_associations);
    }

    */

}

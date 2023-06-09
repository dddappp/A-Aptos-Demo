module aptos_test_proj1::order_update_estimated_ship_date_logic {
    use std::option;

    use aptos_test_proj1::day::Day;
    use aptos_test_proj1::order;
    use aptos_test_proj1::order_estimated_ship_date_updated;

    friend aptos_test_proj1::order_aggregate;

    public(friend) fun verify(
        account: &signer,
        estimated_ship_date: Day,
        order: &order::Order,
    ): order::OrderEstimatedShipDateUpdated {
        let _ = account;
        order::new_order_estimated_ship_date_updated(
            order,
            estimated_ship_date,
        )
    }

    public(friend) fun mutate(
        order_estimated_ship_date_updated: &order::OrderEstimatedShipDateUpdated,
        order: order::Order,
    ): order::Order {
        order::set_estimated_ship_date(
            &mut order,
            option::some(order_estimated_ship_date_updated::estimated_ship_date(order_estimated_ship_date_updated)),
        );
        order
    }
}

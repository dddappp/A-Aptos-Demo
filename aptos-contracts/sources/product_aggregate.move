// <autogenerated>
//   This file was generated by dddappp code generator.
//   Any changes made to this file manually will be lost next time the file is regenerated.
// </autogenerated>

module aptos_test_proj1::product_aggregate {
    use aptos_test_proj1::product;
    use aptos_test_proj1::product_create_logic;
    use std::string::String;

    public entry fun create(
        account: &signer,
        name: String,
        unit_price: u128,
    ) {
        let product_created = product_create_logic::verify(
            account,
            name,
            unit_price,
        );
        let product = product_create_logic::mutate(
            &product_created,
        );
        product::add_product(product);
        product::emit_product_created(product_created);
    }

}
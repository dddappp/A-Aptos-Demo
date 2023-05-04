// <autogenerated>
//   This file was generated by dddappp code generator.
//   Any changes made to this file manually will be lost next time the file is regenerated.
// </autogenerated>

module aptos_test_proj1::day_summary {
    use aptos_framework::account;
    use aptos_framework::event;
    use aptos_std::table::{Self, Table};
    use aptos_test_proj1::day::Day;
    use aptos_test_proj1::genesis_account;
    use aptos_test_proj1::pass_object;
    use std::option::Option;
    use std::string::String;
    friend aptos_test_proj1::day_summary_create_logic;
    friend aptos_test_proj1::day_summary_aggregate;

    const EID_ALREADY_EXISTS: u64 = 101;
    const EID_DATA_TOO_LONG: u64 = 102;

    struct Events has key {
        day_summary_created_handle: event::EventHandle<DaySummaryCreated>,
    }

    struct Tables has key {
        day_summary_table: Table<Day, DaySummary>,
    }

    public fun initialize(account: &signer) {
        genesis_account::assert_genesis_account(account);

        let res_account = genesis_account::resource_account_signer();
        move_to(&res_account, Events {
            day_summary_created_handle: account::new_event_handle<DaySummaryCreated>(&res_account),
        });

        move_to(
            &res_account,
            Tables {
                day_summary_table: table::new(),
            },
        );

    }

    struct DaySummary has store {
        day: Day,
        version: u64,
        description: String,
        metadata: vector<u8>,
        array_data: vector<String>,
        optional_data: Option<String>,
        u16_array_data: vector<u16>,
        u32_array_data: vector<u32>,
        u64_array_data: vector<u64>,
        u128_array_data: vector<u128>,
        u256_array_data: vector<u256>,
    }

    public fun day(day_summary: &DaySummary): Day {
        day_summary.day
    }

    public fun version(day_summary: &DaySummary): u64 {
        day_summary.version
    }

    public fun description(day_summary: &DaySummary): String {
        day_summary.description
    }

    public(friend) fun set_description(day_summary: &mut DaySummary, description: String) {
        day_summary.description = description;
    }

    public fun metadata(day_summary: &DaySummary): vector<u8> {
        day_summary.metadata
    }

    public(friend) fun set_metadata(day_summary: &mut DaySummary, metadata: vector<u8>) {
        day_summary.metadata = metadata;
    }

    public fun array_data(day_summary: &DaySummary): vector<String> {
        day_summary.array_data
    }

    public(friend) fun set_array_data(day_summary: &mut DaySummary, array_data: vector<String>) {
        day_summary.array_data = array_data;
    }

    public fun optional_data(day_summary: &DaySummary): Option<String> {
        day_summary.optional_data
    }

    public(friend) fun set_optional_data(day_summary: &mut DaySummary, optional_data: Option<String>) {
        day_summary.optional_data = optional_data;
    }

    public fun u16_array_data(day_summary: &DaySummary): vector<u16> {
        day_summary.u16_array_data
    }

    public(friend) fun set_u16_array_data(day_summary: &mut DaySummary, u16_array_data: vector<u16>) {
        day_summary.u16_array_data = u16_array_data;
    }

    public fun u32_array_data(day_summary: &DaySummary): vector<u32> {
        day_summary.u32_array_data
    }

    public(friend) fun set_u32_array_data(day_summary: &mut DaySummary, u32_array_data: vector<u32>) {
        day_summary.u32_array_data = u32_array_data;
    }

    public fun u64_array_data(day_summary: &DaySummary): vector<u64> {
        day_summary.u64_array_data
    }

    public(friend) fun set_u64_array_data(day_summary: &mut DaySummary, u64_array_data: vector<u64>) {
        day_summary.u64_array_data = u64_array_data;
    }

    public fun u128_array_data(day_summary: &DaySummary): vector<u128> {
        day_summary.u128_array_data
    }

    public(friend) fun set_u128_array_data(day_summary: &mut DaySummary, u128_array_data: vector<u128>) {
        day_summary.u128_array_data = u128_array_data;
    }

    public fun u256_array_data(day_summary: &DaySummary): vector<u256> {
        day_summary.u256_array_data
    }

    public(friend) fun set_u256_array_data(day_summary: &mut DaySummary, u256_array_data: vector<u256>) {
        day_summary.u256_array_data = u256_array_data;
    }

    fun new_day_summary(
        day: Day,
        description: String,
        metadata: vector<u8>,
        array_data: vector<String>,
        optional_data: Option<String>,
        u16_array_data: vector<u16>,
        u32_array_data: vector<u32>,
        u64_array_data: vector<u64>,
        u128_array_data: vector<u128>,
        u256_array_data: vector<u256>,
    ): DaySummary {
        DaySummary {
            day,
            version: 0,
            description,
            metadata,
            array_data,
            optional_data,
            u16_array_data,
            u32_array_data,
            u64_array_data,
            u128_array_data,
            u256_array_data,
        }
    }

    struct DaySummaryCreated has store, drop {
        day: Day,
        description: String,
        meta_data: vector<u8>,
        array_data: vector<String>,
        optional_data: Option<String>,
        u16_array_data: vector<u16>,
        u32_array_data: vector<u32>,
        u64_array_data: vector<u64>,
        u128_array_data: vector<u128>,
        u256_array_data: vector<u256>,
    }

    public fun day_summary_created_day(day_summary_created: &DaySummaryCreated): Day {
        day_summary_created.day
    }

    public fun day_summary_created_description(day_summary_created: &DaySummaryCreated): String {
        day_summary_created.description
    }

    public fun day_summary_created_meta_data(day_summary_created: &DaySummaryCreated): vector<u8> {
        day_summary_created.meta_data
    }

    public fun day_summary_created_array_data(day_summary_created: &DaySummaryCreated): vector<String> {
        day_summary_created.array_data
    }

    public fun day_summary_created_optional_data(day_summary_created: &DaySummaryCreated): Option<String> {
        day_summary_created.optional_data
    }

    public fun day_summary_created_u16_array_data(day_summary_created: &DaySummaryCreated): vector<u16> {
        day_summary_created.u16_array_data
    }

    public fun day_summary_created_u32_array_data(day_summary_created: &DaySummaryCreated): vector<u32> {
        day_summary_created.u32_array_data
    }

    public fun day_summary_created_u64_array_data(day_summary_created: &DaySummaryCreated): vector<u64> {
        day_summary_created.u64_array_data
    }

    public fun day_summary_created_u128_array_data(day_summary_created: &DaySummaryCreated): vector<u128> {
        day_summary_created.u128_array_data
    }

    public fun day_summary_created_u256_array_data(day_summary_created: &DaySummaryCreated): vector<u256> {
        day_summary_created.u256_array_data
    }

    public(friend) fun new_day_summary_created(
        day: Day,
        description: String,
        meta_data: vector<u8>,
        array_data: vector<String>,
        optional_data: Option<String>,
        u16_array_data: vector<u16>,
        u32_array_data: vector<u32>,
        u64_array_data: vector<u64>,
        u128_array_data: vector<u128>,
        u256_array_data: vector<u256>,
    ): DaySummaryCreated {
        DaySummaryCreated {
            day,
            description,
            meta_data,
            array_data,
            optional_data,
            u16_array_data,
            u32_array_data,
            u64_array_data,
            u128_array_data,
            u256_array_data,
        }
    }


    public(friend) fun create_day_summary(
        day: Day,
        description: String,
        metadata: vector<u8>,
        array_data: vector<String>,
        optional_data: Option<String>,
        u16_array_data: vector<u16>,
        u32_array_data: vector<u32>,
        u64_array_data: vector<u64>,
        u128_array_data: vector<u128>,
        u256_array_data: vector<u256>,
    ): DaySummary acquires Tables {
        asset_day_summary_not_exists(day);
        let day_summary = new_day_summary(
            day,
            description,
            metadata,
            array_data,
            optional_data,
            u16_array_data,
            u32_array_data,
            u64_array_data,
            u128_array_data,
            u256_array_data,
        );
        day_summary
    }

    public(friend) fun asset_day_summary_not_exists(
        day: Day,
    ) acquires Tables {
        let tables = borrow_global_mut<Tables>(genesis_account::resouce_account_address());
        assert!(!table::contains(&tables.day_summary_table, day), EID_ALREADY_EXISTS);
    }

    public(friend) fun update_version_and_add(day_summary: DaySummary) acquires Tables {
        day_summary.version = day_summary.version + 1;
        add_day_summary(day_summary);
    }

    public(friend) fun remove_day_summary(day: Day): DaySummary acquires Tables {
        let tables = borrow_global_mut<Tables>(genesis_account::resouce_account_address());
        table::remove(&mut tables.day_summary_table, day)
    }

    public(friend) fun add_day_summary(day_summary: DaySummary) acquires Tables {
        let tables = borrow_global_mut<Tables>(genesis_account::resouce_account_address());
        table::add(&mut tables.day_summary_table, day(&day_summary), day_summary);
    }

    public fun get_day_summary(day: Day): pass_object::PassObject<DaySummary> acquires Tables {
        let day_summary = remove_day_summary(day);
        pass_object::new(day_summary)
    }

    public fun return_day_summary(day_summary_pass_obj: pass_object::PassObject<DaySummary>) acquires Tables {
        let day_summary = pass_object::extract(day_summary_pass_obj);
        add_day_summary(day_summary);
    }

    public(friend) fun emit_day_summary_created(day_summary_created: DaySummaryCreated) acquires Events {
        let events = borrow_global_mut<Events>(genesis_account::resouce_account_address());
        event::emit_event(&mut events.day_summary_created_handle, day_summary_created);
    }

}

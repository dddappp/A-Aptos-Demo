// <autogenerated>
//   This file was generated by dddappp code generator.
//   Any changes made to this file manually will be lost next time the file is regenerated.
// </autogenerated>

module aptos_test_proj1::day_summary_created {

    use aptos_test_proj1::day::Day;
    use aptos_test_proj1::day_summary::{Self, DaySummaryCreated};
    use std::option::Option;
    use std::string::String;

    public fun day(day_summary_created: &DaySummaryCreated): Day {
        day_summary::day_summary_created_day(day_summary_created)
    }

    public fun description(day_summary_created: &DaySummaryCreated): String {
        day_summary::day_summary_created_description(day_summary_created)
    }

    public fun meta_data(day_summary_created: &DaySummaryCreated): vector<u8> {
        day_summary::day_summary_created_meta_data(day_summary_created)
    }

    public fun array_data(day_summary_created: &DaySummaryCreated): vector<String> {
        day_summary::day_summary_created_array_data(day_summary_created)
    }

    public fun optional_data(day_summary_created: &DaySummaryCreated): Option<String> {
        day_summary::day_summary_created_optional_data(day_summary_created)
    }

    public fun u16_array_data(day_summary_created: &DaySummaryCreated): vector<u16> {
        day_summary::day_summary_created_u16_array_data(day_summary_created)
    }

    public fun u32_array_data(day_summary_created: &DaySummaryCreated): vector<u32> {
        day_summary::day_summary_created_u32_array_data(day_summary_created)
    }

    public fun u64_array_data(day_summary_created: &DaySummaryCreated): vector<u64> {
        day_summary::day_summary_created_u64_array_data(day_summary_created)
    }

    public fun u128_array_data(day_summary_created: &DaySummaryCreated): vector<u128> {
        day_summary::day_summary_created_u128_array_data(day_summary_created)
    }

    public fun u256_array_data(day_summary_created: &DaySummaryCreated): vector<u256> {
        day_summary::day_summary_created_u256_array_data(day_summary_created)
    }

}

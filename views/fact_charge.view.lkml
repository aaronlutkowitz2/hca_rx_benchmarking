view: fact_charge {
  sql_table_name: hca_test.hca_data_7_charge_fact
    ;;

#######################
### Original Dimensions
#######################

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${encounter_id} || '|' || ${charge_code} ;;
  }

  dimension: charge_code {
    group_label: "Charge Details"
    type: number
    sql: ${TABLE}.charge_code ;;
  }

  dimension: charge_description {
    group_label: "Charge Details"
    type: string
    sql: ${TABLE}.charge_description ;;
  }

  dimension: charge_factors {
    group_label: "Charge Details"
    type: number
    sql: ${TABLE}.charge_factors ;;
  }

  dimension: dept_num {
    group_label: "Charge Details"
    type: string
    sql: ${TABLE}.dept_num ;;
  }

  dimension: detail_direct_implant_cost {
    group_label: "Costs"
    type: number
    sql: ${TABLE}.detail_direct_implant_cost ;;
  }

  dimension: detail_direct_med_supply_cost {
    group_label: "Costs"
    type: number
    sql: ${TABLE}.detail_direct_med_supply_cost ;;
  }

  dimension: detail_variable_direct_cost {
    group_label: "Costs"
    type: number
    sql: ${TABLE}.detail_variable_direct_cost ;;
  }

  dimension: encounter_id {
    hidden: yes
    type: number
    sql: ${TABLE}.encounter_id ;;
  }

  dimension: fix_implants_amt {
    group_label: "Costs"
    type: number
    sql: ${TABLE}.fix_implants_amt ;;
  }

  dimension: fix_med_charge_sply_amt {
    group_label: "Costs"
    type: number
    sql: ${TABLE}.fix_med_charge_sply_amt ;;
  }

  dimension: fix_med_non_charge_sply_amt {
    group_label: "Costs"
    type: number
    sql: ${TABLE}.fix_med_non_charge_sply_amt ;;
  }

  dimension: rev_code {
    group_label: "Charge Details"
    type: number
    sql: ${TABLE}.rev_code ;;
  }

  dimension: rev_desc {
    group_label: "Charge Details"
    type: string
    sql: ${TABLE}.rev_desc ;;
  }

  dimension: revenue_code_description {
    group_label: "Charge Details"
    type: string
    sql: ${TABLE}.revenue_code_description ;;
  }

  dimension: rx_ingredient_name {
    group_label: "Charge Details"
    type: string
    sql: ${TABLE}.rx_ingredient_name ;;
  }

  dimension: standard_charge_code {
    group_label: "Charge Details"
    type: string
    sql: ${TABLE}.standard_charge_code ;;
  }

  dimension: standard_item_num {
    group_label: "Charge Details"
    type: string
    sql: ${TABLE}.standard_item_num ;;
  }

  dimension: total_var_direct_cost_amt {
    group_label: "Costs"
    type: number
    sql: ${TABLE}.total_var_direct_cost_amt ;;
  }

  dimension: var_implants_amt {
    group_label: "Costs"
    type: number
    sql: ${TABLE}.var_implants_amt ;;
  }

  dimension: var_med_charge_sply_amt {
    group_label: "Costs"
    type: number
    sql: ${TABLE}.var_med_charge_sply_amt ;;
  }

  dimension: var_med_non_charge_sply_amt {
    group_label: "Costs"
    type: number
    sql: ${TABLE}.var_med_non_charge_sply_amt ;;
  }

#######################
### Derived Dimensions
#######################

#######################
### Meausres
#######################

  measure: count {
    label: "Count Charges"
    type: count
    drill_fields: [rx_ingredient_name]
  }

## Main Costs

  measure: sum_detail_direct_implant_cost {
    group_label: "Costs"
    label: "Direct Implant Costs"
    type: sum
    sql: ${detail_direct_implant_cost} ;;
    value_format_name: usd
  }

  measure: sum_detail_direct_med_supply_cost {
    group_label: "Costs"
    label: "Direct Medical Supply Costs"
    type: sum
    sql: ${detail_direct_med_supply_cost} ;;
    value_format_name: usd
  }

  measure: sum_detail_variable_direct_cost {
    group_label: "Costs"
    label: "Direct Variable Costs"
    type: sum
    sql: ${detail_variable_direct_cost} ;;
    value_format_name: usd
  }

  measure: sum_total_cost {
    group_label: "Costs"
    label: "Total Cost"
    type: number
    sql: ${sum_detail_direct_implant_cost} + ${sum_detail_direct_med_supply_cost} + ${sum_detail_variable_direct_cost} ;;
    value_format_name: usd
  }

## Sub Costs

  measure: sum_fix_implants_amt {
    group_label: "Sub-Costs"
    type: sum
    sql: ${fix_implants_amt} ;;
    value_format_name: usd
  }

  measure: sum_fix_med_charge_sply_amt {
    group_label: "Sub-Costs"
    type: sum
    sql: ${fix_med_charge_sply_amt} ;;
    value_format_name: usd
  }

  measure: sum_fix_med_non_charge_sply_amt {
    group_label: "Sub-Costs"
    type: sum
    sql: ${fix_med_non_charge_sply_amt} ;;
    value_format_name: usd
  }

  measure: sum_total_var_direct_cost_amt {
    group_label: "Sub-Costs"
    type: sum
    sql: ${total_var_direct_cost_amt} ;;
    value_format_name: usd
  }

  measure: sum_var_implants_amt {
    group_label: "Sub-Costs"
    type: sum
    sql: ${var_implants_amt} ;;
    value_format_name: usd
  }

  measure: sum_var_med_charge_sply_amt {
    group_label: "Sub-Costs"
    type: sum
    sql: ${var_med_charge_sply_amt} ;;
    value_format_name: usd
  }

  measure: sum_var_med_non_charge_sply_amt {
    group_label: "Sub-Costs"
    type: sum
    sql: ${var_med_non_charge_sply_amt} ;;
    value_format_name: usd
  }


}

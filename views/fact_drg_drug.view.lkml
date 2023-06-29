view: fact_drg_drug {
  sql_table_name: hca_test.hca_data_5_drg_drug_fact
    ;;

#######################
### Original Dimensions
#######################

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${drg_id} || '|' || ${drug_id} ;;
  }

  dimension: avg_cost {
    group_label: "KPIs"
    type: number
    sql: ${TABLE}.avg_cost ;;
  }

  dimension: drg_id {
    hidden: yes
    type: number
    sql: ${TABLE}.drg_id ;;
  }

  dimension: drug_id {
    hidden: yes
    type: number
    sql: ${TABLE}.drug_id ;;
  }

  dimension: total_cost {
    group_label: "KPIs"
    type: number
    sql: ${TABLE}.total_cost ;;
  }

  dimension: util_low {
    group_label: "KPIs"
    type: number
    sql: ${TABLE}.util_low ;;
  }

  dimension: util_high {
    group_label: "KPIs"
    type: number
    sql: ${TABLE}.util_high ;;
  }

#######################
### Derived Dimensions
#######################

  dimension: variance {
    group_label: "KPIs"
    type: number
    sql: ${util_high} - ${util_low} ;;
  }

  dimension: potential_score_num {
    type: number
    sql: ${variance} * ${avg_cost} ;;
  }

#######################
### Measures
#######################

  measure: average_util_low {
    group_label: "Potential Score"
    type: average
    sql: ${util_low} ;;
    value_format_name: percent_1
  }

  measure: average_util_high {
    group_label: "Potential Score"
    type: average
    sql: ${util_high} ;;
    value_format_name: percent_1
  }

  measure: average_variance {
    group_label: "Potential Score"
    type: average
    sql: ${variance} ;;
    value_format_name: percent_1
  }

  measure: average_avg_cost {
    group_label: "Potential Score"
    type: average
    sql: ${avg_cost} ;;
    value_format_name: usd_0
  }

  measure: average_total_cost {
    group_label: "Potential Score"
    type: average
    sql: ${total_cost} ;;
    value_format_name: usd_0
  }

  measure: potential_score {
    group_label: "Potential Score"
    label: "*Potential Score"
    type: average
    sql: ${potential_score_num} ;;
    value_format_name: decimal_1
  }

  measure: count {
    hidden: yes
    type: count
  }
}

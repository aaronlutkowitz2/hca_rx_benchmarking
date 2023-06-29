view: pdt_dynamic_variance {
  derived_table: {
    explore_source: fact_facility_drg_drug {
      bind_filters: {
        to_field: fact_facility_drg_drug.dynamic_drg
        from_field: fact_facility_drg_drug.dynamic_drg
      }
      column: facility_id {}
      column: dynamic_drg_value {}
      column: drug_id {}
      column: percent_total_encounters {}
    }
  }
  dimension: pk {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${facility_id} || '|' || ${dynamic_drg_value} || '|' || ${drug_id} ;;
  }
  dimension: facility_id {
    hidden: yes
  }
  dimension: dynamic_drg_value {
    hidden: yes
  }
  dimension: drug_id {
    hidden: yes
    type: number
  }
  dimension: percent_total_encounters {
    hidden: yes
    type: number
  }
  measure: utilization_high {
    hidden: yes
    type: percentile
    percentile: 90
    sql: ${percent_total_encounters} ;;
    value_format_name: percent_0
  }
  measure: utilization_low {
    hidden: yes
    type: percentile
    percentile: 10
    sql: ${percent_total_encounters} ;;
    value_format_name: percent_0
  }
}

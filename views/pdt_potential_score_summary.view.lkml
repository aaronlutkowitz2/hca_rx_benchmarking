view: pdt_potential_score_summary {
  derived_table: {
    explore_source: fact_facility_drg_drug {
      bind_filters: {
        to_field: fact_facility_drg_drug.dynamic_drg
        from_field: fact_facility_drg_drug.dynamic_drg
      }
      column: dynamic_drg_value {}
      column: drug_id {}
      column: potential_score {}
      column: variance {}
      column: average_drug_cost {}
    }
  }
  dimension: pk {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${dynamic_drg_value} || '|' || ${drug_id} ;;
  }
  dimension: dynamic_drg_value {
    hidden: yes
  }
  dimension: drug_id {
    hidden: yes
  }
  dimension: potential_score {
    group_label: "Potential Score Dimensions"
    type: number
  }
  dimension: variance {
    group_label: "Potential Score Dimensions"
    type: number
  }
  dimension: average_drug_cost {
    group_label: "Potential Score Dimensions"
    type: number
  }
}

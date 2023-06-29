view: fact_encounter_drug {
  sql_table_name: hca_test.hca_data_3_encounter_drug_fact
    ;;

#######################
### Original Dimensions
#######################

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${encounter_id} || '|' || ${drug_id} ;;
  }

  dimension: drg_id {
    #   hidden: yes
    type: number
    sql: safe_cast(${TABLE}.drg_id as int64) ;;
  }

  dimension: drug_cost {
    group_label: "KPIs"
    type: number
    sql: ${TABLE}.drug_cost ;;
  }

  dimension: drug_id {
    hidden: yes
    type: number
    sql: ${TABLE}.drug_id ;;
  }

  dimension: encounter_id {
    type: number
    sql: ${TABLE}.encounter_id ;;
  }

  dimension: encounter_id_hashed {
    type: string
    sql: farm_fingerprint(cast(${TABLE}.encounter_id as string)) ;;
    link: {
      label: "Encounter Deep Dive"
      url: "/dashboards/37?Encounter+ID+Hashed={{ value | url_encode }}"
      ## Aaron demo: 37
      ## REBA demo: ?
      icon_url: "http://www.google.com/s2/favicons?domain=www.looker.com"
    }
  }

  dimension: facility_id {
    hidden: yes
    type: number
    sql: safe_cast(${TABLE}.facility_id as INT64) ;;
  }

  dimension: opportunity {
    group_label: "KPIs"
    type: number
    sql: ${TABLE}.opportunity ;;
  }

  dimension: percent_cost {
    group_label: "KPIs"
    type: number
    sql: ${TABLE}.percent_cost ;;
  }

#######################
### Derived Dimensions
#######################

#######################
### Measures
#######################

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }

  measure: count_encounters {
    type: count_distinct
    sql: ${encounter_id} ;;
    drill_fields: [encounter_drill*]
  }

  set: encounter_drill {
    fields: [
        encounter_id_hashed
      , fact_charge.charge_code
      , fact_charge.charge_description
      , fact_charge.charge_factors
      , fact_charge.dept_num
      , fact_charge.sum_detail_direct_med_supply_cost
      , fact_charge.sum_detail_variable_direct_cost
      , fact_charge.sum_fix_med_charge_sply_amt
      , fact_charge.sum_var_med_charge_sply_amt
    ]
  }
}

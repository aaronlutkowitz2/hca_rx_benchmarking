view: fact_facility_drg_drug {
  sql_table_name: hca_test.hca_data_8_facility_drg_drug_snapshot_wide
    ;;

#######################
### Categorical Breakouts
#######################

######## PK ########

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${facility_id} || '|' || ${drg_id} || '|' || ${drug_id} ;;
  }

######## DRG ########

  dimension: drg_id {
    view_label: "DRG"
    type: number
    sql: safe_cast(${TABLE}.drg_id as int64) ;;
  }

  dimension: pl_level5 {
    view_label: "DRG"
    type: string
    sql: ${TABLE}.pl_level5 ;;
  }

  dimension: l1_in_vs_out {
    view_label: "DRG"
    group_label: "Hierarchy"
    type: string
    sql: ${TABLE}.l1_in_vs_out ;;
    drill_fields: [l2_service_line, l3_drg_superfamily]
  }

  dimension: l2_service_line {
    view_label: "DRG"
    group_label: "Hierarchy"
    type: string
    sql: ${TABLE}.l2_service_line ;;
    drill_fields: [l3_drg_superfamily, l4_drg_family]
  }

  dimension: l3_drg_superfamily {
    view_label: "DRG"
    group_label: "Hierarchy"
    type: string
    sql: ${TABLE}.l3_drg_superfamily ;;
    drill_fields: [l4_drg_family, l5_drg_name]
  }

  dimension: l4_drg_family {
    view_label: "DRG"
    group_label: "Hierarchy"
    type: string
    sql: ${TABLE}.l4_drg_family ;;
    drill_fields: [l5_drg_name]
  }

  dimension: l5_drg_name {
    view_label: "DRG"
    group_label: "Hierarchy"
    type: string
    sql: ${TABLE}.l5_drg_name ;;
  }

  parameter: dynamic_drg {
    view_label: "DRG"
    type: unquoted
    default_value: "drug_l4"
    allowed_value: {label: "L1 In vs Outpatient" value: "drug_l1"}
    allowed_value: {label: "L2 Service Line" value: "drug_l2"}
    allowed_value: {label: "L3 DRG Group" value: "drug_l3"}
    allowed_value: {label: "L4 DRG Family" value: "drug_l4"}
    allowed_value: {label: "L5 DRG" value: "drug_l5"}
  }

  dimension: dynamic_drg_value {
    view_label: "DRG"
    type: string
    sql:
      {% if    dynamic_drg._parameter_value == 'drug_l1' %} ${l1_in_vs_out}
      {% elsif dynamic_drg._parameter_value == 'drug_l2' %} ${l2_service_line}
      {% elsif dynamic_drg._parameter_value == 'drug_l3' %} ${l3_drg_superfamily}
      {% elsif dynamic_drg._parameter_value == 'drug_l4' %} ${l4_drg_family}
      {% elsif dynamic_drg._parameter_value == 'drug_l5' %} ${l5_drg_name}
      {% else %} ${l4_drg_family}
      {% endif %}
    ;;
  }

  dimension: dynamic_drg_drug_value {
    view_label: "DRG"
    type: string
    sql: ${drug_name} || ' - ' ||  ${dynamic_drg_value} ;;
    link: {
      label: "Facility Deep Dive"
      url: "/dashboards/36?Granularity={{ _filters['fact_facility_drg_drug.dynamic_drg'] | url_encode }}&Dynamic+Value={{ value | url_encode }}"
      ## Aaron demo: 36
      ## REBA demo: 88(?)
      icon_url: "http://www.google.com/s2/favicons?domain=www.looker.com"
    }
  }

######## Drug ########

  dimension: drug_id {
    view_label: "Drug"
    type: number
    sql: ${TABLE}.drug_id ;;
  }

  dimension: drug_name {
    view_label: "Drug"
    type: string
    sql: ${TABLE}.drug_name ;;
  }

  dimension: drug_name_shorten {
    view_label: "Drug"
    type: string
    sql: left(${drug_name},100) ;;
  }

######## Facility ########

  dimension: facility_id {
    view_label: "Facility"
    label: "COID"
    type: number
    sql: safe_cast(${TABLE}.facility_id as INT64) ;;
  }

  dimension: enterprise_name {
    view_label: "Facility"
    group_label: "Hierarchy"
    label: "1 Enterprise"
    type: string
    sql: 'HCA' ;;
    drill_fields: [group_name, division_name]
  }

  dimension: group_name {
    view_label: "Facility"
    group_label: "Hierarchy"
    label: "2 Group"
    type: string
    sql: ${TABLE}.group_name ;;
    drill_fields: [division_name, market_name]
  }

  dimension: division_name {
    view_label: "Facility"
    group_label: "Hierarchy"
    label: "3 Division"
    type: string
    sql: ${TABLE}.division_name ;;
    drill_fields: [market_name, facility_name]
  }

  dimension: market_name {
    view_label: "Facility"
    group_label: "Hierarchy"
    label: "4 Market"
    type: string
    sql: ${TABLE}.market_name ;;
    drill_fields: [facility_name]
  }

  dimension: facility_name {
    view_label: "Facility"
    group_label: "Hierarchy"
    label: "5 Facility Name"
    type: string
    sql: trim(${TABLE}.facility_name) ;;
  }

  dimension: lat {
    hidden: yes
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: long {
    hidden: yes
    type: number
    sql: ${TABLE}.long ;;
  }

  dimension: location {
    view_label: "Facility"
    type: location
    sql_latitude: ${lat} ;;
    sql_longitude: ${long} ;;
  }


#######################
### KPIs
#######################

######## Dimensions ########

  dimension: drug_cost {
    group_label: "KPIs"
    type: number
    sql: ${TABLE}.drug_cost ;;
  }

  dimension: drug_encounters {
    group_label: "KPIs"
    type: number
    sql: ${TABLE}.drug_encounters ;;
  }

  dimension: drug_opportunity {
    group_label: "KPIs"
    type: number
    sql: ${TABLE}.drug_opportunity ;;
  }

  dimension: total_encounters {
    group_label: "KPIs"
    type: number
    sql: ${TABLE}.total_encounters ;;
  }

######## Utilization % ########

  measure: sum_drug_encounters {
    group_label: "Util %"
    type: sum
    sql: ${drug_encounters} ;;
  }

  measure: sum_total_encounters {
    group_label: "Util %"
    type: sum
    sql: ${total_encounters} ;;
  }

  measure: percent_total_encounters {
    group_label: "Util %"
    label: "Drug Util %"
    type: number
    sql: ${sum_drug_encounters} / nullif(${sum_total_encounters},0) ;;
    value_format_name: percent_1
  }

######## Potential Score ########

  measure: utilization_high {
    hidden: yes
    type: number
    sql: ${pdt_dynamic_variance.utilization_high} ;;
    value_format_name: percent_0
  }

  measure: utilization_low {
    hidden: yes
    type: number
    sql: ${pdt_dynamic_variance.utilization_low} ;;
    value_format_name: percent_0
  }

  measure: variance {
    group_label: "Potential Score"
    label: "Util % Variance"
    type: number
    sql: ${utilization_high} - ${utilization_low} ;;
    value_format_name: percent_0
    html: {{rendered_value}} ({{utilization_low._rendered_value}} Low | {{ utilization_high._rendered_value}} High) ;;
  }

  measure: potential_score {
    group_label: "Potential Score"
    label: "*Potential Score"
    type: number
    sql: ${variance} * ${average_drug_cost} ;;
    value_format_name: decimal_1
  }

######## Opportunity ########

  measure: sum_drug_opportunity {
    group_label: "Opportunity"
    type: sum
    sql: ${drug_opportunity} ;;
    value_format_name: usd_0
  }

  measure: percent_drug_opportunity {
    group_label: "Opportunity"
    type: number
    sql: ${sum_drug_opportunity} / ${total_drug_cost} ;;
    value_format_name: percent_1
  }

######## Cost ########

  measure: total_drug_cost {
    group_label: "Cost"
    type: sum
    sql: ${drug_cost} ;;
    value_format_name: usd_0
    link: {
      label: "Financial Deep Dive"
      url: "/dashboards/35?Granularity={{ _filters['fact_facility_drg_drug.dynamic_drg'] | url_encode }}&Drug+Name={{ _filters['fact_facility_drg_drug.drug_name'] | url_encode }}&Dynamic+Value={{ _filters['fact_facility_drg_drug.dynamic_drg_drug_value'] | url_encode }}&L1+In+Vs+Out={{ _filters['fact_facility_drg_drug.l1_in_vs_out'] | url_encode }}&L3+Drg+Superfamily={{ _filters['fact_facility_drg_drug.l3_drg_superfamily'] | url_encode }}&L2+Service+Line={{ _filters['fact_facility_drg_drug.l2_service_line'] | url_encode }}&L4+Drg+Family={{ _filters['fact_facility_drg_drug.l4_drg_family'] | url_encode }}&L5+Drg+Name={{ _filters['fact_facility_drg_drug.l5_drg_name'] | url_encode }}"
      ## Aaron demo: 35
      ## REBA demo: ?
      icon_url: "http://www.google.com/s2/favicons?domain=www.looker.com"
    }
  }

  measure: average_drug_cost {
    group_label: "Cost"
    type: number
    sql: ${total_drug_cost} / nullif(${sum_drug_encounters},0) ;;
    value_format_name: usd
  }

######## Counts ########

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }

  measure: count_facility {
    group_label: "Count"
    type: count_distinct
    sql: ${facility_id} ;;
  }

  measure: count_drug {
    group_label: "Count"
    type: count_distinct
    sql: ${drug_id} ;;
  }

  measure: count_drg {
    group_label: "Count"
    type: count_distinct
    sql: ${drg_id} ;;
  }

}

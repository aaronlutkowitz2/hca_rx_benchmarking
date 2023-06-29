view: dim_facility {
  sql_table_name: hca_test.hca_data_6_facility_dim
    ;;

#######################
### Original Dimensions
#######################

  dimension: facility_id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.facility_id ;;
  }

### Hierarchy

  dimension: enterprise_name {
    group_label: "Hierarchy"
    label: "1 Enterprise"
    type: string
    sql: 'HCA' ;;
    drill_fields: [group_name, division_name]
  }

  dimension: group_name {
    group_label: "Hierarchy"
    label: "2 Group"
    type: string
    sql: ${TABLE}.group_name ;;
    drill_fields: [division_name, market_name]
  }

  dimension: division_name {
    group_label: "Hierarchy"
    label: "3 Division"
    type: string
    sql: ${TABLE}.division_name ;;
    drill_fields: [market_name, facility_name]
  }

  dimension: market_name {
    group_label: "Hierarchy"
    label: "4 Market"
    type: string
    sql: ${TABLE}.market_name ;;
    drill_fields: [facility_name]
  }

  dimension: facility_name {
    group_label: "Hierarchy"
    label: "5 Facility Name"
    type: string
    sql: trim(${TABLE}.facility_name) ;;
  }


### Address

  dimension: address {
    group_label: "Address"
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: city {
    group_label: "Address"
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: county {
    group_label: "Address"
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: postal_code {
    group_label: "Address"
    type: number
    sql: ${TABLE}.postal_code ;;
    map_layer_name: us_zipcode_tabulation_areas
  }

  dimension: state {
    group_label: "Address"
    type: string
    sql: ${TABLE}.state ;;
    map_layer_name: us_states
  }

  dimension: location {
    group_label: "Address"
    type: location
    sql_latitude: ${lat} ;;
    sql_longitude: ${long} ;;
  }

### ZZ

  dimension: coid_name {
    group_label: "ZZ"
    type: string
    sql: ${TABLE}.coid_name ;;
  }

  dimension: cons_facility_name {
    group_label: "ZZ"
    type: string
    sql: ${TABLE}.cons_facility_name ;;
  }

  dimension: division_code {
    group_label: "ZZ"
    type: number
    sql: ${TABLE}.division_code ;;
  }

  dimension: facility_full {
    group_label: "ZZ"
    hidden: yes
    type: string
    sql: ${TABLE}.facility_full ;;
  }

  dimension: group_code {
    group_label: "ZZ"
    type: number
    sql: ${TABLE}.group_code ;;
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

  dimension: market_code {
    group_label: "ZZ"
    type: number
    sql: ${TABLE}.market_code ;;
  }

#######################
### Derived Dimensions
#######################

#######################
### Measures
#######################

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      group_name,
      facility_name,
      market_name,
      cons_facility_name,
      division_name,
      coid_name
    ]
  }
}

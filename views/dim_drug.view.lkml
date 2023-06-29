view: dim_drug {
  sql_table_name: hca_test.hca_data_1_drug_dim
    ;;

#######################
### Original Dimensions
#######################

  dimension: drug_id {
    hidden: yes
    type: number
    sql: ${TABLE}.drug_id ;;
  }

  dimension: drug_id_old {
    hidden: yes
    type: string
    sql: ${TABLE}.drug_id_old ;;
  }

  dimension: drug_name {
    type: string
    sql: left(${TABLE}.drug_name,100) ;;
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
    drill_fields: [drug_name]
  }
}

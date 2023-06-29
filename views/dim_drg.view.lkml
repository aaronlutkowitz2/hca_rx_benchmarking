view: dim_drg {
  sql_table_name: hca_test.hca_data_2_drg_dim
    ;;

#######################
### Original Dimensions
#######################

  dimension: drg_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.drg_id ;;
  }

  dimension: pl_level5 {
    #  hidden: yes
    type: string
    sql: ${TABLE}.drg_id_old ;;
  }

  dimension: l1_in_vs_out {
    type: string
    sql: ${TABLE}.l1_in_vs_out ;;
    drill_fields: [l2_service_line, l3_drg_superfamily]
  }

  dimension: l2_service_line {
    type: string
    sql: ${TABLE}.l2_service_line ;;
    drill_fields: [l3_drg_superfamily, l4_drg_family]
  }

  dimension: l3_drg_superfamily {
    type: string
    sql: ${TABLE}.l3_drg_superfamily ;;
    drill_fields: [l4_drg_family, l5_drg_name]
  }

  dimension: l4_drg_family {
    type: string
    sql: ${TABLE}.l4_drg_family ;;
    drill_fields: [l5_drg_name]
  }

  dimension: l5_drg_name {
    type: string
    sql: ${TABLE}.l5_drg_name ;;
  }

#######################
### Derived Dimensions
#######################

  parameter: dynamic_drg {
    type: unquoted
    default_value: "drug_l4"
    allowed_value: {label: "Drug - L1 In vs Outpatient" value: "drug_l1"}
    allowed_value: {label: "Drug - L2 Service Line" value: "drug_l2"}
    allowed_value: {label: "Drug - L3 DRG Group" value: "drug_l3"}
    allowed_value: {label: "Drug - L4 DRG Family" value: "drug_l4"}
    allowed_value: {label: "Drug - L5 DRG" value: "drug_l5"}
  }

  dimension: dynamic_drg_value {
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

#######################
### Measures
#######################

  measure: count {
    hidden: yes
    type: count
    drill_fields: [l5_drg_name]
  }
}

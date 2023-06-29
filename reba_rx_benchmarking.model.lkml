# connection: "rba-hca-rba-dev"
connection: "argolis_asw"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
include: "dashboards.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: fact_facility_drg_drug {
  label: "REBA - Rx Benchmarking"

  view_label: "*Main KPIs"

  join: fact_encounter_drug {
    view_label: "Encounter"
    relationship: one_to_many
    sql_on:
          ${fact_facility_drg_drug.drg_id} = ${fact_encounter_drug.drg_id}
      AND ${fact_facility_drg_drug.drug_id} = ${fact_encounter_drug.drug_id}
      AND ${fact_facility_drg_drug.facility_id} = ${fact_encounter_drug.facility_id}
    ;;
  }

  join: fact_charge {
    view_label: "Charge"
    relationship: many_to_many
    sql_on:
          ${fact_encounter_drug.encounter_id} = ${fact_charge.encounter_id}
    ;;
  }

  join: pdt_dynamic_variance {
    relationship: many_to_one
    sql_on:
          ${fact_facility_drg_drug.facility_id} = ${pdt_dynamic_variance.facility_id}
      AND ${fact_facility_drg_drug.drug_id} = ${pdt_dynamic_variance.drug_id}
      AND ${fact_facility_drg_drug.dynamic_drg_value} = ${pdt_dynamic_variance.dynamic_drg_value}
    ;;
  }

  join: pdt_potential_score_summary {
    view_label: "Potential Score"
    relationship: many_to_one
    sql_on:
          ${fact_facility_drg_drug.drug_id} = ${pdt_potential_score_summary.drug_id}
      AND ${fact_facility_drg_drug.dynamic_drg_value} = ${pdt_potential_score_summary.dynamic_drg_value}
    ;;
  }
}

  # join: dim_drg {
  #   view_label: "DRG"
  #   relationship: many_to_one
  #   sql_on:
  #         ${fact_facility_drg_drug.drg_id} = ${dim_drg.drg_id}
  #     ;;
  # }

  # join: dim_drug {
  #   view_label: "Drug"
  #   relationship: many_to_one
  #   sql_on:
  #         ${fact_facility_drg_drug.drug_id} = ${dim_drug.drug_id}
  #     ;;
  # }

  # join: dim_facility {
  #   view_label: "Facility"
  #   relationship: many_to_one
  #   sql_on:
  #         ${fact_facility_drg_drug.facility_id} = ${dim_facility.facility_id}
  #     ;;
  # }

  # join: fact_drg_drug {
  #   view_label: "*Main KPIs (Potential Score)"
  #   relationship: many_to_one
  #   sql_on:
  #           ${fact_facility_drg_drug.drg_id} = ${fact_drg_drug.drg_id}
  #       AND ${fact_facility_drg_drug.drug_id} = ${fact_drg_drug.drug_id}
  #       ;;
  # }

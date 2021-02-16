connection: "epbcs_grants"

include: "/*/*.view.lkml"

datagroup: grants_epbcs_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: grants_epbcs_default_datagroup

explore:fact_forecast
{
  join: dim_account {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_forecast.account_id} = ${dim_account.account} ;;
  }

  join: dim_assignment {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_forecast.assignment_id} = ${dim_assignment.assignment} ;;
  }

    join: dim_pi {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_forecast.project_pi} = ${dim_pi.pi} ;;
  }

  join: dim_project {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_forecast.account_id} = ${dim_account.account} ;;
  }

  join: dim_project_award_type {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_forecast.project_id} = ${dim_project.project} ;;
  }

  join: dim_project_period {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_forecast.project_period_sl} = ${dim_project_period.project_period} ;;
  }

  join: dim_project_year {
    type: left_outer
    relationship: many_to_one
    sql_on: ${fact_forecast.project_year_sl} = ${dim_project_year.project_year} ;;
  }

join: dim_work_unit {
  type: left_outer
  relationship: many_to_one
  sql_on: ${fact_forecast.work_unit_id} = ${dim_work_unit.work_unit} ;;

}
}

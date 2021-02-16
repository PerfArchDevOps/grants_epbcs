view: dim_project_period {
  sql_table_name: OACDEMO.DIM_PROJECT_PERIOD ;;

  dimension: period_number {
    type: number
    sql: ${TABLE}.PERIOD_NUMBER ;;
  }

  dimension: project_period {
    type: string
    sql: ${TABLE}.PROJECT_PERIOD ;;
  }

  dimension: project_period_parent {
    type: string
    sql: ${TABLE}.PROJECT_PERIOD_PARENT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

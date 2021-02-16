view: dim_project_year {
  sql_table_name: OACDEMO.DIM_PROJECT_YEAR ;;

  dimension: project_sort {
    type: string
    sql: ${TABLE}.PROJECT_SORT ;;
  }

  dimension: project_year {
    type: string
    sql: ${TABLE}.PROJECT_YEAR ;;
  }

  dimension: project_year_parent {
    type: string
    sql: ${TABLE}.PROJECT_YEAR_PARENT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

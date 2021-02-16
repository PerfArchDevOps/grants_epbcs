view: dim_project {
  sql_table_name: OACDEMO.DIM_PROJECT ;;

  dimension: project {
    type: string
    sql: ${TABLE}.PROJECT ;;
  }

  dimension: project_alias {
    type: string
    sql: ${TABLE}.PROJECT_ALIAS ;;
  }

  dimension: project_parent {
    type: string
    sql: ${TABLE}.PROJECT_PARENT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: dim_project {
  sql_table_name: OACDEMO.DIM_PROJECT ;;

  label: "Project"

  dimension: project {
    type: string
      primary_key:  yes
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

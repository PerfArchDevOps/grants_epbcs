view: dim_project_award_type {
  sql_table_name: OACDEMO.DIM_PROJECT_AWARD_TYPE ;;

 label: "Award Type"

  dimension: award_type {
    type: string
    sql: ${TABLE}.PROJECT_AWARD_TYPE ;;
  }

  dimension: award_type_alias {
    type: string
    sql: ${TABLE}.PROJECT_AWARD_TYPE_ALIAS ;;
  }

  dimension: award_type_parent {
    type: string
    sql: ${TABLE}.PROJECT_AWARD_TYPE_PARENT ;;
  }

}

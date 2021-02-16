view: dim_assignment {
  sql_table_name: OACDEMO.DIM_ASSIGNMENT ;;

  dimension: assignment {
    type: string
    sql: ${TABLE}.ASSIGNMENT ;;
  }

  dimension: assignment_alias {
    type: string
    sql: ${TABLE}.ASSIGNMENT_ALIAS ;;
  }

  dimension: assignment_parent {
    type: string
    sql: ${TABLE}.ASSIGNMENT_PARENT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

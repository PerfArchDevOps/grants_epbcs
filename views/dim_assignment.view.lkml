view: dim_assignment {
  label: "Assignment"
  sql_table_name: OACDEMO.DIM_ASSIGNMENT ;;

  dimension: assignment {
    type: string
    primary_key: yes
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


}

view: dim_work_unit {
  sql_table_name: OACDEMO.DIM_WORK_UNIT ;;

  dimension: work_unit {
    type: string
    sql: ${TABLE}.WORK_UNIT ;;
  }

  dimension: work_unit_alias {
    type: string
    sql: ${TABLE}.WORK_UNIT_ALIAS ;;
  }

  dimension: work_unit_parent {
    type: string
    sql: ${TABLE}.WORK_UNIT_PARENT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

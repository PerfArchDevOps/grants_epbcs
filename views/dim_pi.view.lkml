view: dim_pi {
  sql_table_name: OACDEMO.DIM_PI ;;

  dimension: pi {
    type: string
    sql: ${TABLE}.PI ;;
  }

  dimension: pi_alias {
    type: string
    sql: ${TABLE}.PI_ALIAS ;;
  }

  dimension: pi_parent {
    type: string
    sql: ${TABLE}.PI_PARENT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

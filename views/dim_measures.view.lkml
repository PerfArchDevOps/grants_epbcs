view: dim_measures {
  sql_table_name: OACDEMO.DIM_MEASURES ;;

  dimension: measures {
    type: string
    sql: ${TABLE}.MEASURES ;;
  }

  dimension: measures_alias {
    type: string
    sql: ${TABLE}.MEASURES_ALIAS ;;
  }

  dimension: measures_parent {
    type: string
    sql: ${TABLE}.MEASURES_PARENT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

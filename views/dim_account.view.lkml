view: dim_account {
  sql_table_name: OACDEMO.DIM_ACCOUNT ;;

  dimension: account {
    type: string
    sql: ${TABLE}.ACCOUNT ;;
  }

  dimension: account_alias {
    type: string
    sql: ${TABLE}.ACCOUNT_ALIAS ;;
  }

  dimension: account_parent {
    type: string
    sql: ${TABLE}.ACCOUNT_PARENT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

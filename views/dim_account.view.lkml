view: dim_account {
  label: "Account"
  sql_table_name: OACDEMO.DIM_ACCOUNT ;;

  dimension: account {
    type: string
    primary_key: yes
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

}

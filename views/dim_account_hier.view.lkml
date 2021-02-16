view: dim_account_hier {
  sql_table_name: OACDEMO.DIM_ACCOUNT_HIER ;;

  dimension: account_lowest_level {
    type: string
    sql: ${TABLE}.ACCOUNT_LOWEST_LEVEL ;;
  }

  dimension: l10_account_path {
    type: string
    sql: ${TABLE}.L10_ACCOUNT_PATH ;;
  }

  dimension: l1_account_path {
    type: string
    sql: ${TABLE}.L1_ACCOUNT_PATH ;;
  }

  dimension: l2_account_path {
    type: string
    sql: ${TABLE}.L2_ACCOUNT_PATH ;;
  }

  dimension: l3_account_path {
    type: string
    sql: ${TABLE}.L3_ACCOUNT_PATH ;;
  }

  dimension: l4_account_path {
    type: string
    sql: ${TABLE}.L4_ACCOUNT_PATH ;;
  }

  dimension: l5_account_path {
    type: string
    sql: ${TABLE}.L5_ACCOUNT_PATH ;;
  }

  dimension: l6_account_path {
    type: string
    sql: ${TABLE}.L6_ACCOUNT_PATH ;;
  }

  dimension: l7_account_path {
    type: string
    sql: ${TABLE}.L7_ACCOUNT_PATH ;;
  }

  dimension: l8_account_path {
    type: string
    sql: ${TABLE}.L8_ACCOUNT_PATH ;;
  }

  dimension: l9_account_path {
    type: string
    sql: ${TABLE}.L9_ACCOUNT_PATH ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

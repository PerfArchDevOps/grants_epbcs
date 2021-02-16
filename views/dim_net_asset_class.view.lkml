view: dim_net_asset_class {
  sql_table_name: OACDEMO.DIM_NET_ASSET_CLASS ;;

  dimension: net_asset_class {
    type: string
    sql: ${TABLE}.NET_ASSET_CLASS ;;
  }

  dimension: net_asset_class_alias {
    type: string
    sql: ${TABLE}.NET_ASSET_CLASS_ALIAS ;;
  }

  dimension: net_asset_class_parent {
    type: string
    sql: ${TABLE}.NET_ASSET_CLASS_PARENT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: dim_pi {
  sql_table_name: OACDEMO.DIM_PI ;;

  label: "Principal Investigator"

  dimension: pi {
    type: string
  primary_key: yes
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

}

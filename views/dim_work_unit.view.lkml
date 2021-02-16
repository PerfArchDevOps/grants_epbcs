view: dim_work_unit {
  sql_table_name: OACDEMO.DIM_WORK_UNIT ;;


  label: "Work Unit"

  dimension: work_unit {
    type: string
    primary_key: yes
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


  }

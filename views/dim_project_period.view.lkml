view: dim_project_period {
  sql_table_name: OACDEMO.DIM_PROJECT_PERIOD ;;

  label: "Project Period"

  dimension: period_number {
    type: number
    sql: ${TABLE}.PERIOD_NUMBER ;;
  }

  dimension: project_period {
    type: string
    primary_key: yes
    sql: ${TABLE}.PROJECT_PERIOD ;;
  }

  dimension: project_period_parent {
    type: string
    hidden: yes
    sql: ${TABLE}.PROJECT_PERIOD_PARENT ;;
  }

}

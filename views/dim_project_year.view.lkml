view: dim_project_year {
  sql_table_name: OACDEMO.DIM_PROJECT_YEAR ;;


    label: "Project Year"
  dimension: project_sort {
    type: string
    sql: ${TABLE}.PROJECT_SORT ;;
  }

  dimension: project_year {
    type: string
    primary_key: yes
    sql: ${TABLE}.PROJECT_YEAR ;;
  }

  dimension: project_year_parent {
    type: string
    hidden: yes
    sql: ${TABLE}.PROJECT_YEAR_PARENT ;;
  }

}

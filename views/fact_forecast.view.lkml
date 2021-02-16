view: fact_forecast {
  sql_table_name: OACDEMO.FACT_FORECAST ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: adj_budget {
    type: number
    sql: ${TABLE}.ADJ_BUDGET ;;
  }

  dimension: assignment_id {
    type: string
    sql: ${TABLE}.ASSIGNMENT_ID ;;
  }

  dimension: awardtype {
    type: string
    sql: ${TABLE}.AWARDTYPE ;;
  }

  dimension: beg_budget {
    type: number
    sql: ${TABLE}.BEG_BUDGET ;;
  }

  dimension: cubename {
    type: string
    sql: ${TABLE}.CUBENAME ;;
  }

  dimension: dist_salary {
    type: number
    sql: ${TABLE}.DIST_SALARY ;;
  }

  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.FISCAL_YEAR ;;
  }

  dimension: month_name {
    type: string
    sql: ${TABLE}.MONTH_NAME ;;
  }

  dimension: pov {
    type: string
    sql: ${TABLE}.POV ;;
  }

  dimension_group: project_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PROJECT_END_DATE ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.PROJECT_ID ;;
  }

  dimension: project_period_sl {
    type: string
    sql: ${TABLE}.PROJECT_PERIOD_SL ;;
  }

  dimension_group: project_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PROJECT_START_DATE ;;
  }

  dimension: project_year_sl {
    type: string
    sql: ${TABLE}.PROJECT_YEAR_SL ;;
  }

  dimension: projectfundtype {
    type: string
    sql: ${TABLE}.PROJECTFUNDTYPE ;;
  }

  dimension: projectpi {
    type: string
    sql: ${TABLE}.PROJECTPI ;;
  }

  dimension: scenario {
    type: string
    sql: ${TABLE}.SCENARIO ;;
  }

  dimension: standard {
    type: string
    sql: ${TABLE}.STANDARD ;;
  }

  dimension: standard_val {
    type: number
    sql: ${TABLE}.STANDARD_VAL ;;
  }

  dimension: summer {
    type: number
    sql: ${TABLE}.SUMMER ;;
  }

  dimension: supplemental {
    type: number
    sql: ${TABLE}.SUPPLEMENTAL ;;
  }

  dimension: version_id {
    type: string
    sql: ${TABLE}.VERSION_ID ;;
  }

  dimension: work_unit_id {
    type: string
    sql: ${TABLE}.WORK_UNIT_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [month_name, cubename]
  }
}

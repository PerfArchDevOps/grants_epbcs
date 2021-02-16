view: fact_forecast {
  sql_table_name: OACDEMO.FACT_FORECAST ;;

  label: "Fact - Forecast"

  dimension: account_id {
    type: string
    hidden: yes
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: assignment_id {
    type: string
    hidden: yes
    sql: ${TABLE}.ASSIGNMENT_ID ;;
  }

  dimension: awardtype {
    type: string
    hidden: yes
    sql: ${TABLE}.AWARDTYPE ;;
  }


  dimension: cubename {
    type: string
    hidden: yes
    sql: ${TABLE}.CUBENAME ;;
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
    primary_key: yes
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
    hidden: yes
    sql: ${TABLE}.PROJECT_ID ;;
  }

  dimension: project_period_sl {
    type: string
    hidden: yes
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
    hidden: yes
        sql: ${TABLE}.PROJECT_YEAR_SL ;;
  }

  dimension: projectfundtype {
    type: string
    hidden: yes
    sql: ${TABLE}.PROJECTFUNDTYPE ;;
  }

  dimension: projectpi {
    type: string
    hidden: yes
    sql: ${TABLE}.PROJECTPI ;;
  }

  dimension: scenario {
    type: string
    sql: ${TABLE}.SCENARIO ;;
  }

  dimension: standard {
    type: string
    hidden: yes
    sql: ${TABLE}.STANDARD ;;
  }


  dimension: version_id {
    type: string
    hidden: yes
        sql: ${TABLE}.VERSION_ID ;;
  }

  dimension: work_unit_id {
    type: string
    hidden: yes
    sql: ${TABLE}.WORK_UNIT_ID ;;
  }

# Measures


  measure: adj_budget {
    type: sum
    label: "Adj Budget"
    value_format: "$#,##0.00"
    sql: ${TABLE}.ADJ_BUDGET ;;
  }
  measure: beg_budget {
    type: sum
    label: "Begin Budget"
    value_format: "$#,##0.00"
    sql: ${TABLE}.BEG_BUDGET ;;
  }

  measure: dist_salary {
    type: sum
    label: "Dist Salary"
    value_format: "$#,##0.00"
    sql: ${TABLE}.DIST_SALARY ;;
  }
  measure: standard_val {
    type: sum
    label: "Standard"
    value_format: "$#,##0.00"
    sql: ${TABLE}.STANDARD_VAL ;;
  }

  measure: summer {
    type: sum
    label: "Summer"
    value_format: "$#,##0.00"
    sql: ${TABLE}.SUMMER ;;
  }

  measure: supplemental {
    type: sum
    label: "Supplemental"
    value_format: "$#,##0.00"
    sql: ${TABLE}.SUPPLEMENTAL ;;
  }

  measure: total_spend {
    type:  number
    label: "Total Spend"
    value_format: "$#,##0.00"
    sql: nvl(${TABLE}.SUPPLEMENTAL,0) + nvl(${TABLE}."DIST_SALARY",0)
    + nvl(${TABLE}."SUMMER",0)  + nvl(${TABLE}."STANDARD_VAL",0) ;;
}

  measure: total_budget {
    type:  number
    label: "Total Budget"
    value_format: "$#,##0.00"
    sql: nvl(${TABLE}.ADJ_BUDGET,0) + nvl(${TABLE}."BEG_BUDGET",0)   ;;
  }

  measure: count {
    type: count
    label: "Fact Count"
    drill_fields: [month_name, cubename]
  }
}

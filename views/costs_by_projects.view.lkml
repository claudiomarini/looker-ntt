view: costs_by_projects {
  sql_table_name: `billing_information.costs_by_projects`
    ;;

  dimension: ancestry_numbers {
    type: string
    sql: ${TABLE}.Ancestry_Numbers ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  dimension: folder_name_hierarchy {
    type: string
    sql: ${TABLE}.Folder_Name_Hierarchy ;;
  }

  dimension: level1 {
    type: string
    sql: ${TABLE}.level1 ;;
  }

  dimension: level2 {
    type: string
    sql: ${TABLE}.level2 ;;
  }

  dimension: level3 {
    type: string
    sql: ${TABLE}.level3 ;;
  }

  dimension: level4 {
    type: string
    sql: ${TABLE}.level4 ;;
  }

  dimension: level5 {
    type: string
    sql: ${TABLE}.level5 ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.Project_Name ;;
  }

  dimension: service_description {
    type: string
    sql: ${TABLE}.service_description ;;
  }

  dimension: sku_description {
    type: string
    sql: ${TABLE}.sku_description ;;
  }

  dimension: total_spend {
    type: number
    sql: ${TABLE}.Total_Spend ;;
  }

  measure: count {
    type: count
    drill_fields: [project_name]
  }
}

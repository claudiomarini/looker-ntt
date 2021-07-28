connection: "cost_report"

# include all the views
include: "/views/**/*.view"

datagroup: cost_monitor_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cost_monitor_default_datagroup

explore: costs_by_projects {}

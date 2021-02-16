connection: "epbcs_grants"

include: "/*/*.view.lkml"

datagroup: grants_epbcs_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: grants_epbcs_default_datagroup

- view: clientusage
  sql_table_name: public.clientusage
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: app_id
    type: string
    sql: ${TABLE}.app_id

  - dimension: app_name
    type: string
    sql: ${TABLE}.app_name

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: client_id
    type: string
    sql: ${TABLE}.client_id

  - dimension: country
    type: string
    sql: ${TABLE}.country

  - dimension: device_id
    type: string
    sql: ${TABLE}.device_id

  - dimension: latitude
    type: number
    sql: ${TABLE}.latitude

  - dimension: link_id
    type: string
    sql: ${TABLE}.link_id

  - dimension: longitude
    type: number
    sql: ${TABLE}.longitude

  - dimension: other_info
    type: string
    sql: ${TABLE}.other_info

  - dimension: payoff_id
    type: string
    sql: ${TABLE}.payoff_id

  - dimension: platform
    type: string
    sql: ${TABLE}.platform

  - dimension: query_params
    type: string
    sql: ${TABLE}.query_params

  - dimension: request_time
    type: time
    sql: ${TABLE}.request_time/1000
    datatype: epoch

  - dimension: source_ip
    type: string
    sql: ${TABLE}.source_ip

  - dimension: state_name
    type: string
    sql: ${TABLE}.state_name

  - dimension: trigger_id
    type: string
    # hidden: true
    sql: ${TABLE}.trigger_id

  - dimension: trigger_type
    type: string
    sql: ${TABLE}.trigger_type

  - dimension: user_agent
    type: string
    sql: ${TABLE}.user_agent

  - dimension: user_agent_header
    type: string
    sql: ${TABLE}.user_agent_header

  - dimension: user_info
    type: string
    sql: ${TABLE}.user_info
  

  - measure: count
    type: count
    drill_fields: [id, state_name, app_name, triggers.id, triggers.name]


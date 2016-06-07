- view: category
  sql_table_name: public.category
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: datecreated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.datecreated

  - dimension_group: datemodified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.datemodified

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: ready_pool_id
    type: number
    sql: ${TABLE}.ready_pool_id

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - account.count
    - auth_client_details.count
    - deletedtriggers.count
    - overalltriggers.count
    - tempdeletedtriggers.count
    - temptriggers.count
    - triggers.count
    - view_categorywisecreationandscan.count


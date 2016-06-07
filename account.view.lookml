- view: account
  sql_table_name: public.account
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: category_id
    type: number
    # hidden: true
    sql: ${TABLE}.category_id

  - dimension_group: datecreated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.datecreated

  - dimension_group: datemodified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.datemodified

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: owner_id
    type: string
    sql: ${TABLE}.owner_id

  - measure: count
    type: count
    drill_fields: [id, name, category.id, category.name, label_history.count]


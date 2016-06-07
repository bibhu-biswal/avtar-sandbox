- view: label_history
  sql_table_name: public.label_history
  fields:

  - dimension: account_id
    type: string
    # hidden: true
    sql: ${TABLE}.account_id

  - dimension_group: datemodified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.datemodified

  - dimension: is_deleted
    type: number
    sql: ${TABLE}.is_deleted

  - dimension: label_id
    type: number
    # hidden: true
    sql: ${TABLE}.label_id

  - measure: count
    type: count
    drill_fields: [account.id, account.name, label.id, label.name]


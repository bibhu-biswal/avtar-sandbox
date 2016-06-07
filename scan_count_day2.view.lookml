
- view: scan_count_day2
  derived_table:
    sql: |
      select count(*),client_id,min(DATE(TIMESTAMP 'epoch' + request_time/1000 * INTERVAL '1 Second ')) as start_date from clientusage  group by client_id,DATE_PART(y,(TIMESTAMP 'epoch' + request_time/1000 * INTERVAL '1 Second ')),DATE_PART(mon,(TIMESTAMP 'epoch' + request_time/1000 * INTERVAL '1 Second ')),DATE_PART(d,(TIMESTAMP 'epoch' + request_time/1000 * INTERVAL '1 Second ')) order by start_date asc

  fields:
  - dimension: count
    type: number
    sql: ${TABLE}.count

  - dimension: client_id
    type: string
    sql: ${TABLE}.client_id

  - dimension: start_date
    type: date
    sql: ${TABLE}.start_date

  sets:
    detail:
      - count
      - client_id
      - start_date


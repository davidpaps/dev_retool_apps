WITH 
-- auxiliary table with one row per each day in our range
dates AS (
  SELECT d::date AS day
  FROM generate_series(
    to_date({{DateRange.value.start}}, 'YYYY-MM-DD'),
    to_date({{DateRange.value.end}}, 'YYYY-MM-DD'),
    '1 day'
  ) AS gs(d)
), 
-- get unique tuples "user id - date", one tuple per each user that viewed a page on a given date
-- we need to look at events that happened up to 30 days before our range start, because they'll affect trailing 30d MAU
unique_users_by_date AS (
  SELECT DISTINCT "userId", date_trunc('day', "createdAt")::date AS day
  FROM audit_trail_events 
  WHERE 
    "actionType" = ANY({{userActions.value}})
    AND "createdAt" >= (to_date({{ DateRange.value.start }}, 'YYYY-MM-DD') - INTERVAL '30 DAYS') AND "createdAt" < {{ DateRange.value.end }}
    AND "organizationId" = ANY({{organizationIds.data}}) -- need this to hit (organizationId, createdAt) index
),
-- now we generate one row per each "user id - date" combination where user had been active in 30 days ending on that date
active_users_30d AS (
  SELECT DISTINCT "userId", dates.day AS day
  FROM dates JOIN unique_users_by_date
  ON dates.day >= unique_users_by_date.day AND dates.day < unique_users_by_date.day + 30
),
-- all we're left to do is to count distinct "30d active" users for each date in our range
trailing_30d_maus AS (
  SELECT dates.day, COUNT(DISTINCT "userId") AS MAU
  FROM dates LEFT JOIN active_users_30d
  ON dates.day = active_users_30d.day
  WHERE dates.day >= {{DateRange.value.start}} AND dates.day <= {{DateRange.value.end}}
  GROUP BY dates.day
)
SELECT * FROM trailing_30d_maus


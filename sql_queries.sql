-- QUERY 1:
-- Business Question: What are some trends in smart device usage?
-- SMART Question: What is the average sleep efficiency, minutes asleep, and time in bed per user per day during the one-month period?
-- Summary: Analyzes average sleep metrics across all users for April–May 2016

SELECT 
    ROUND(AVG(sleep_efficiency), 2) AS avg_sleep_efficiency,
    ROUND(AVG(total_minutes_asleep), 0) AS avg_minutes_asleep,
    ROUND(AVG(total_time_in_bed), 0) AS avg_time_in_bed
FROM sleep_data;

-- Results: 
-- 0.92 sleep efficiency, 
-- 419 minutes asleep, 
-- 459 minutes in bed

---------

-- QUERY 2:
-- Business Question: What are some trends in smart device usage?
-- SMART Question: What is the average number of steps and activity minutes (by intensity level) per user per day during the one-month period?
-- Summary: Analyzes average daily physical activity levels to understand how users engage in exercise and movement

SELECT
  ROUND(AVG(total_steps), 0) AS avg_steps,
  ROUND(AVG(very_active_minutes), 0) AS avg_very_active_minutes,
  ROUND(AVG(fairly_active_minutes), 0) AS avg_fairly_active_minutes,
  ROUND(AVG(lightly_active_minutes), 0) AS avg_lightly_active_minutes
FROM daily_activity;

-- Results:
-- avg_steps: 7638
-- avg_very_active_minutes: 21
-- avg_fairly_active_minutes: 14
-- avg_lightly_active_minutes: 193

---------

-- QUERY 3:
-- Business Question: What are some trends in smart device usage?
-- SMART Question: Does increased physical activity correlate with better sleep efficiency or more minutes asleep per user per day?
-- Summary: Joins sleep and activity data on user ID and date to explore relationship between physical activity and sleep

SELECT
  a.id,
  a.activity_date,
  a.total_steps,
  a.total_active_minutes,
  s.total_minutes_asleep,
  s.sleep_efficiency
FROM daily_activity a
JOIN sleep_data s
  ON a.id = s.id AND a.activity_date = s.sleep_date;

-- Results: 03_activity_vs_sleep_joined.csv
-- Analysis in Tableau
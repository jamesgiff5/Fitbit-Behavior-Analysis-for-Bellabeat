
-- These SQL queries were used to calculate key activity and sleep KPIs for the analysis. 
-- While similar calculations could have been performed directly in Tableau, using SQL ensured reproducibility, clarity, and data validation before visualization.

-- QUERY 1: Sleep Behavior Analysis
-- Summary: Measures overall sleep quality and duration to evaluate opportunities for promoting Bellabeat’s sleep-tracking features

SELECT 
    ROUND(AVG(sleep_efficiency), 2) AS avg_sleep_efficiency,
    ROUND(AVG(total_minutes_asleep), 0) AS avg_minutes_asleep,
    ROUND(AVG(total_time_in_bed), 0) AS avg_time_in_bed
FROM sleep_data;

-- Results: 
-- avg_sleep_efficiency: 0.92  
-- avg_minutes_asleep: 419  
-- avg_time_in_bed: 459

---------

-- QUERY 2: Activity Engagement Overview
-- Summary: Helps determine how often users engage in moderate or high-intensity activity—key for feature ideas that boost motivation

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
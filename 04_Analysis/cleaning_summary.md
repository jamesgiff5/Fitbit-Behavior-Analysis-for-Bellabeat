# 🧹 Data Cleaning Summary

The following data cleaning transformations were performed using Excel Power Query to prepare the Fitbit activity and sleep datasets for analysis, ensuring consistent formatting, removing irrelevant fields, and creating calculated columns for deeper insights.

## **🔧 dailyActivity_merged.csv**

- Converted all columns to appropriate data types (e.g., `ActivityDate` to date, numeric fields to integers or decimals).
- Removed the `SedentaryActiveDistance` column due to lack of analytical value and near-zero variance.
- Added two calculated fields:
  - **TotalActiveMinutes**: Sum of `VeryActiveMinutes`, `FairlyActiveMinutes`, and `LightlyActiveMinutes`.
  - **PercentActive**: Proportion of day spent in active minutes (`TotalActiveMinutes / 1440`).

This cleaning process ensured consistent data types, removed noise, and enhanced analytical value by consolidating activity data into interpretable metrics.

---

## **🔧 sleepDay_merged.csv**

- Converted `SleepDay` column from datetime to date format and **renamed it to `SleepDate`** for clarity and join compatibility.
- Ensured all columns had appropriate data types (`Id`, `TotalSleepRecords`, `TotalMinutesAsleep`, and `TotalTimeInBed` as integers).
- Added a new calculated field:
  - **SleepEfficiency**: Ratio of time asleep to time in bed (`TotalMinutesAsleep / TotalTimeInBed`), used to assess sleep quality.
- Verified the dataset contained no nulls, errors, or formatting issues.
---
This cleaned dataset is now optimized for accurate analysis and ready to join with the activity dataset on `Id` and `SleepDate`.  

Joining on both `Id` and `SleepDate` is essential because an `Id`-only join would incorrectly match multiple records across different days. The date ensures each user’s activity is paired with the correct sleep record for that specific day.
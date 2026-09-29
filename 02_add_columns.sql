create or replace table cyclistic-dataset-work.cyclistic_data.overall_table as
select *,
timestamp_diff(ended_at, started_at, second) as ride_length,
format_timestamp('%A',started_at) as dayOfWeek
from cyclistic-dataset-work.cyclistic_data.overall_table

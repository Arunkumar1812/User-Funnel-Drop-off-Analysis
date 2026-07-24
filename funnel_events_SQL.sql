CREATE DATABASE funnel_db;

USE funnel_db;

select * from funnel_events_sample;

select count(*) from funnel_events_sample;

describe funnel_events_sample;

ALTER TABLE funnel_events_sample
MODIFY COLUMN user_id varchar(10);

ALTER TABLE funnel_events_sample
MODIFY COLUMN step VARCHAR(100);

ALTER TABLE funnel_events_sample
MODIFY COLUMN timestamp DATETIME;

SELECT * FROM funnel_events_sample LIMIT 5;
SELECT DISTINCT step
FROM funnel_events_sample;


SELECT
    step,
    COUNT(DISTINCT user_id) AS users
FROM funnel_events_sample
GROUP BY step
ORDER BY
CASE
    WHEN step='Visited Site' THEN 1
    WHEN step='Signup Started' THEN 2
    WHEN step='Details Filled' THEN 3
    WHEN step='Email Verified' THEN 4
    WHEN step='Purchase Completed' THEN 5
END;

WITH stage_counts AS
(
    SELECT
        step,
        COUNT(DISTINCT user_id) AS users,
        CASE
            WHEN step='Visited Site' THEN 1
            WHEN step='Signup Started' THEN 2
            WHEN step='Details Filled' THEN 3
            WHEN step='Email Verified' THEN 4
            WHEN step='Purchase Completed' THEN 5
        END AS stage_order
    FROM funnel_events_sample
    GROUP BY step
)

SELECT
    step,
    users,
    ROUND(
        users * 100.0 /
        LAG(users) OVER (ORDER BY stage_order),
        2
    ) AS conversion_rate
FROM stage_counts
ORDER BY stage_order;

WITH stage_counts AS
(
    SELECT
        step,
        COUNT(DISTINCT user_id) AS users,
        CASE
            WHEN step='Visited Site' THEN 1
            WHEN step='Signup Started' THEN 2
            WHEN step='Details Filled' THEN 3
            WHEN step='Email Verified' THEN 4
            WHEN step='Purchase Completed' THEN 5
        END AS stage_order
    FROM funnel_events_sample
    GROUP BY step
)

SELECT
    step,
    users,
    ROUND(
        users * 100.0 /
        LAG(users) OVER (ORDER BY stage_order),
        2
    ) AS conversion_rate,
    ROUND(
        100 -
        (users * 100.0 /
        LAG(users) OVER (ORDER BY stage_order)),
        2
    ) AS drop_off
FROM stage_counts
ORDER BY stage_order;

WITH stage_counts AS
(
    SELECT
        step,
        COUNT(DISTINCT user_id) AS users,
        CASE
            WHEN step='Visited Site' THEN 1
            WHEN step='Signup Started' THEN 2
            WHEN step='Details Filled' THEN 3
            WHEN step='Email Verified' THEN 4
            WHEN step='Purchase Completed' THEN 5
        END AS stage_order
    FROM funnel_events_sample
    GROUP BY step
),
results AS
(
    SELECT
        step,
        users,
        ROUND(
            100 -
            (users * 100.0 /
            LAG(users) OVER (ORDER BY stage_order)),
            2
        ) AS drop_off
    FROM stage_counts
)
SELECT *
FROM results
ORDER BY drop_off DESC
LIMIT 1;
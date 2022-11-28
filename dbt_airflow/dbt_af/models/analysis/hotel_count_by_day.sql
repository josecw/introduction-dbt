WITH prepped_data AS (
    SELECT
        *
    FROM
        {{ ref('prepped_data') }}
)
SELECT
    booking_date,
    hotel,
    COUNT(id) AS count_bookings
FROM
    prepped_data
GROUP BY
    booking_date,
    hotel

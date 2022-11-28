SELECT
    booking_date,
    hotel,
    cost,
    AVG(cost) over (
        ORDER BY
            booking_date rows BETWEEN 29 preceding
            AND CURRENT ROW
    ) AS "30_DAY_AVG_COST",
    cost - AVG(cost) over (
        ORDER BY
            booking_date rows BETWEEN 29 preceding
            AND CURRENT ROW
    ) AS "DIFF_BTW_ACTUAL_AVG"
FROM
    {{ ref('prepped_data') }}

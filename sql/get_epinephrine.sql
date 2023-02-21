SELECT
  stay_id,
  vaso_amount,
  vaso_rate,
  starttime,
  endtime
FROM
  mimiciv_derived.epinephrine
ORDER BY
  stay_id,
  starttime;










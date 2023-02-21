SELECT
  stay_id,
  charttime,
  urineoutput
FROM
  mimiciv_derived.urine_output
ORDER BY
  stay_id,
  charttime;
SELECT
  stay_id,
  charttime,
  creat
FROM
  mimiciv_derived.kdigo_creatinine
ORDER BY
  stay_id,
  charttime;
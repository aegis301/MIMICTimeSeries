SELECT
  subject_id,
  charttime,
  crp
FROM
  mimiciv_derived.inflammation
ORDER BY
  subject_id,
  charttime;
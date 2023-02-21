SELECT
  subject_id,
  charttime,
  alt,
  ast,
  bilirubin_total
FROM
  mimiciv_derived.enzyme
ORDER BY
  subject_id,
  charttime
SELECT
  subject_id,
  charttime,
  hematocrit,
  hemoglobin,
  platelet,
  wbc
FROM
  mimiciv_derived.complete_blood_count
ORDER BY
  subject_id,
  charttime;
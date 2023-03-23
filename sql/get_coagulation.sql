SELECT
  subject_id,
  charttime,
  d_dimer,
  fibrinogen,
  inr,
  ptt
FROM
  mimiciv_derived.coagulation
ORDER BY
  subject_id,
  charttime
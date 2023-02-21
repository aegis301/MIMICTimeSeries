SELECT
  subject_id,
  charttime,
  albumin,
  bicarbonate,
  bun
FROM
  mimiciv_derived.chemistry
  ORDER BY subject_id, charttime;
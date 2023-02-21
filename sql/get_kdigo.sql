SELECT
  subject_id,
  stay_id,
  charttime,
  aki_stage_creat,
  aki_stage_uo,
  aki_stage_crrt,
  aki_stage
FROM
  mimiciv_derived.kdigo_stages
ORDER BY
  stay_id,
  charttime;
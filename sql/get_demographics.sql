SELECT
  d.subject_id,
  d.hadm_id,
  d.stay_id,
  d.gender,
  d.dod AS date_of_death,
  d.admittime,
  d.dischtime,
  d.admission_age,
  d.ethnicity,
  d.hospstay_seq,
  d.icu_intime,
  d.icu_outtime,
  d.icustay_seq,
  h.height,
  w.weight_admit AS admission_weight
FROM
  mimiciv_derived.icustay_detail AS d
  LEFT JOIN mimiciv_derived.height AS h USING(stay_id) 
  LEFT JOIN mimiciv_derived.first_day_weight AS w USING(stay_id);
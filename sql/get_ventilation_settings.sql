SELECT
  subject_id,
  stay_id,
  charttime,
  respiratory_rate_set,
  respiratory_rate_spontaneous,
  respiratory_rate_total,
  tidal_volume_observed,
  plateau_pressure,
  peep,
  fio2,
  flow_rate
FROM
  mimiciv_derived.ventilator_setting;
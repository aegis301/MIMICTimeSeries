SELECT
    subject_id,
    charttime,
    po2,
    pco2,
    ph,
    baseexcess,
    calcium,
    potassium,
    sodium
FROM mimiciv_derived.bg
WHERE specimen = 'ART.'
    

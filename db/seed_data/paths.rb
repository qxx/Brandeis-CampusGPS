module PathSeeds
  def PathSeeds.l(name)
    Location.find_by!(code_name:name)
  end

PATHS = [
{
  description: 'Assemble a catapult, set the right angle and launch yourself from Heller to Volen.',
  distance: 1,
  start_location_id: PathSeeds.l('Heller_e1').id,
  end_location_id: PathSeeds.l('Volen_e1').id,
  direction: 0
}, {
  description: 'Go back to Heller',
  distance: 1,
  start_location_id: PathSeeds.l('Volen_e1').id,
  end_location_id: PathSeeds.l('Heller_e1').id,
  direction: 180
}, {
  description: 'SSC to Mandel',
  distance: 2,
  start_location_id: PathSeeds.l('SSC_e1').id,
  end_location_id: PathSeeds.l('Mandel_e1').id,
  direction: 180
}, {
  description: 'Mandel to SSC',
  distance: 2,
  start_location_id: PathSeeds.l('Mandel_e1').id,
  end_location_id: PathSeeds.l('SSC_e1').id,
  direction: 180
}, {
  description: 'Volen to Mandel',
  distance: 3,
  start_location_id: PathSeeds.l('Volen_e1').id,
  end_location_id: PathSeeds.l('Mandel_e1').id,
  direction: 0
}, {
  description: 'Mandel to Volen',
  distance: 3,
  start_location_id: PathSeeds.l('Mandel_e1').id,
  end_location_id: PathSeeds.l('Volen_e1').id,
  direction: 180
}, {
  description: 'Volen to SSC',
  distance: 4,
  start_location_id: PathSeeds.l('Volen_e1').id,
  end_location_id: PathSeeds.l('SSC_e1').id,
  direction: 0
}, {
  description: 'SSC to Volen',
  distance: 4,
  start_location_id: PathSeeds.l('SSC_e1').id,
  end_location_id: PathSeeds.l('Volen_e1').id,
  direction: 180
}, {
  description: 'Heller to Mandel',
  distance: 4,
  start_location_id: PathSeeds.l('Heller_e1').id,
  end_location_id: PathSeeds.l('Mandel_e1').id,
  direction: 0
}, {
  description: 'Mandel to Heller',
  distance: 5,
  start_location_id: PathSeeds.l('Mandel_e1').id,
  end_location_id: PathSeeds.l('Heller_e1').id,
  direction: 180
}
]
end
module PathSeeds
  def PathSeeds.l(name)
    Location.find_by!(code_name:name)
  end

PATHS = [
{
  description: 'Assemble a catapult, set the right angle and launch yourself from Heller to Volen.',
  start_location_id: PathSeeds.l('Heller_e1').id,
  end_location_id: PathSeeds.l('Volen_e1').id,
  direction: 0
}, {
  description: 'Go back to Heller',
  start_location_id: PathSeeds.l('Volen_e1').id,
  end_location_id: PathSeeds.l('Heller_e1').id,
  direction: 180
}, {
  description: 'SSC to Mandel',
  start_location_id: PathSeeds.l('SSC_e1').id,
  end_location_id: PathSeeds.l('Mandel_e1').id,
  direction: 180
}, {
  description: 'Mandel to SSC',
  start_location_id: PathSeeds.l('Mandel_e1').id,
  end_location_id: PathSeeds.l('SSC_e1').id,
  direction: 180
}, {
  description: 'Volen to Mandel',
  start_location_id: PathSeeds.l('Volen_e1').id,
  end_location_id: PathSeeds.l('Mandel_e1').id,
  direction: 0
}, {
  description: 'Mandel to Volen',
  start_location_id: PathSeeds.l('Mandel_e1').id,
  end_location_id: PathSeeds.l('Volen_e1').id,
  direction: 180
}, {
  description: 'Volen to SSC',
  start_location_id: PathSeeds.l('Volen_e1').id,
  end_location_id: PathSeeds.l('SSC_e1').id,
  direction: 0
},  {
  description: 'Heller to Mandel',
  start_location_id: PathSeeds.l('Heller_e1').id,
  end_location_id: PathSeeds.l('Mandel_e1').id,
  direction: 0
}, {
  description: 'Mandel to Heller',
  start_location_id: PathSeeds.l('Mandel_e1').id,
  end_location_id: PathSeeds.l('Heller_e1').id,
  direction: 180
}, 
# Real paths
{
  description: 'Exit SSC and go down stairs',
  start_location_id: PathSeeds.l('SSC_e1').id,
  end_location_id: PathSeeds.l('FellowsGarden_k1').id,
  photo: 'paths/SSC_e1_FellowsGarden_k1.jpg'
},
{
  description: 'Exit SSC and go to the road in front of you',
  start_location_id: PathSeeds.l('SSC_e2').id,
  end_location_id: PathSeeds.l('FellowsGarden_k1').id
},
{
  description: 'Walk toward the physics building',
  start_location_id: PathSeeds.l('FellowsGarden_k1').id,
  end_location_id: PathSeeds.l('FellowsGarden_k2').id,
  photo: 'paths/FellowsGarden_k1_FellowsGarden_k2.jpg'
},
{
  description: 'Walk along the Fellows Garden',
  start_location_id: PathSeeds.l('FellowsGarden_k2').id,
  end_location_id: PathSeeds.l('FellowsGarden_k3').id,
  photo: 'paths/FellowsGarden_k2_FellowsGarden_k3.jpg'
},
{
  description: 'Climb up the hill toward Volen',
  start_location_id: PathSeeds.l('FellowsGarden_k3').id,
  end_location_id: PathSeeds.l('Volen_k1').id,
  photo: 'paths/FellowsGarden_k3_Volen_k1.jpg'
},
{
  description: 'Volen is on your right. Walk a little closer to Volen',
  start_location_id: PathSeeds.l('Volen_k1').id,
  end_location_id: PathSeeds.l('Volen_k2').id,
  photo: 'paths/Volen_k1_Volen_k2.jpg'
},
{
  description: 'Entrance to Volen is right ahead',
  start_location_id: PathSeeds.l('Volen_k2').id,
  end_location_id: PathSeeds.l('Volen_e1').id,
  photo: 'paths/Volen_k2_Volen_e1.jpg'
}
]
end
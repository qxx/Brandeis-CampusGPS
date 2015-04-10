module PathSeeds
  def PathSeeds.l(name)
    Location.find_by!(code_name:name)
  end

PATHS = [
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
},
{
  description: 'Climb up the stairs and SSC is right ahead',
  end_location_id: PathSeeds.l('SSC_e1').id,
  start_location_id: PathSeeds.l('FellowsGarden_k1').id
},
{
  description: "Don't go up, entrance to SSC is on the right of the stairs.",
  end_location_id: PathSeeds.l('SSC_e2').id,
  start_location_id: PathSeeds.l('FellowsGarden_k1').id
},
{
  description: 'Walk pass the physics building and SSC will be on your left',
  end_location_id: PathSeeds.l('FellowsGarden_k1').id,
  start_location_id: PathSeeds.l('FellowsGarden_k2').id
},
{
  description: 'Walk along the Fellows Garden',
  end_location_id: PathSeeds.l('FellowsGarden_k2').id,
  start_location_id: PathSeeds.l('FellowsGarden_k3').id
},
{
  description: 'Walk down the hill, facing the blue building',
  end_location_id: PathSeeds.l('FellowsGarden_k3').id,
  start_location_id: PathSeeds.l('Volen_k1').id
},
{
  description: 'Walk toward the down path once you have left the building',
  end_location_id: PathSeeds.l('Volen_k1').id,
  start_location_id: PathSeeds.l('Volen_k2').id
},
{
  description: 'Exit Volen',
  end_location_id: PathSeeds.l('Volen_k2').id,
  start_location_id: PathSeeds.l('Volen_e1').id
},
###################### Ted add path below here ####################

###################### End  ###########################################

###################### Wan add path below here ####################

###################### End  ###########################################

###################### Jing add path below here ###################

###################### End  ###########################################

###################### Xi add path below here #####################
{
  description: "Walk along the fellows garden",
  start_location_id: PathSeeds.l('SCC_k1').id,
  end_location_id: PathSeeds.l('SCC_k3').id,
  photo: nil
},
{
  description: "Walk along the fellows garden",
  start_location_id: PathSeeds.l('SCC_k3').id,
  end_location_id: PathSeeds.l('SCC_k1').id,
  photo: nil
},
{
  description: "Entrance to SCC is right ahead",
  start_location_id: PathSeeds.l('SCC_k3').id,
  end_location_id: PathSeeds.l('SCC_e1').id,
  photo: nil
},
{
  description: "Exit SCC",
  start_location_id: PathSeeds.l('SCC_e1').id,
  end_location_id: PathSeeds.l('SCC_k3').id,
  photo: nil
},
{
  description: "Walk through SCC",
  start_location_id: PathSeeds.l('SCC_e1').id,
  end_location_id: PathSeeds.l('SCC_i1').id,
  photo: nil
},
{
  description: "Walk towards the exit",
  start_location_id: PathSeeds.l('SCC_i1').id,
  end_location_id: PathSeeds.l('SCC_e1').id,
  photo: nil
},
{
  description: "Walk towards the exit",
  start_location_id: PathSeeds.l('SCC_i1').id,
  end_location_id: PathSeeds.l('SCC_e3').id,
  photo: nil
},
{
  description: "Walk through SCC",
  start_location_id: PathSeeds.l('SCC_e3').id,
  end_location_id: PathSeeds.l('SCC_i1').id,
  photo: nil
},
{
  description: "Exit SCC and walk across the lawn",
  start_location_id: PathSeeds.l('SCC_e3').id,
  end_location_id: PathSeeds.l('SCC_k6').id,
  photo: nil
},
{
  description: "Walk across the lawn and SCC is right ahead",
  start_location_id: PathSeeds.l('SCC_k6').id,
  end_location_id: PathSeeds.l('SCC_e3').id,
  photo: nil
},
{
  description: "Take the right path and walk down",
  start_location_id: PathSeeds.l('SCC_k6').id,
  end_location_id: PathSeeds.l('SCC_k7').id,
  photo: nil
},
{
  description: "Continue climbing up",
  start_location_id: PathSeeds.l('SCC_k7').id,
  end_location_id: PathSeeds.l('SCC_k6').id,
  photo: nil
},
{
  description: "Continue walking down toward the theatre",
  start_location_id: PathSeeds.l('SCC_k7').id,
  end_location_id: PathSeeds.l('SCC_k8').id,
  photo: nil
},
{
  description: "Walk along the path in the lawn toward the blue building",
  start_location_id: PathSeeds.l('SCC_k8').id,
  end_location_id: PathSeeds.l('SCC_k7').id,
  photo: nil
},
{
  description: "Walk across the road",
  start_location_id: PathSeeds.l('SCC_k8').id,
  end_location_id: PathSeeds.l('Admissions_k1').id,
  photo: nil
},
{
  description: "Walk across the road",
  start_location_id: PathSeeds.l('Admissions_k1').id,
  end_location_id: PathSeeds.l('SCC_k8').id,
  photo: nil
},
{
  description: "Walk along the back of the Admissions building",
  start_location_id: PathSeeds.l('Admissions_k1').id,
  end_location_id: PathSeeds.l('TheaterLot_k1').id,
  photo: nil
},
{
  description: "Walk along the back of the Admissions building",
  start_location_id: PathSeeds.l('TheaterLot_k1').id,
  end_location_id: PathSeeds.l('Admissions_k1').id,
  photo: nil
},
{
  description: "Enter Theater Lot",
  start_location_id: PathSeeds.l('TheaterLot_k1').id,
  end_location_id: PathSeeds.l('TheaterLot_p1').id,
  photo: nil
},
{
  description: "Walk towards the circular building and exit Theater Lot",
  start_location_id: PathSeeds.l('TheaterLot_p1').id,
  end_location_id: PathSeeds.l('TheaterLot_k1').id,
  photo: nil
},
{
  description: "Walk to the back of SCC",
  start_location_id: PathSeeds.l('SCC_k1').id,
  end_location_id: PathSeeds.l('SCC_k11').id,
  photo: nil
},
{
  description: "Walk towards Fellows Garden",
  start_location_id: PathSeeds.l('SCC_k11').id,
  end_location_id: PathSeeds.l('SCC_k1').id,
  photo: nil
},
{
  description: "Walk towards Faculty Club",
  start_location_id: PathSeeds.l('SCC_k3').id,
  end_location_id: PathSeeds.l('SCC_k2').id,
  photo: nil
},
{
  description: "Walk towards SCC",
  start_location_id: PathSeeds.l('SCC_k2').id,
  end_location_id: PathSeeds.l('SCC_k3').id,
  photo: nil
},
{
  description: 'Walk towards Science Complex',
  start_location_id: PathSeeds.l('SCC_k2').id,
  end_location_id: PathSeeds.l('FellowsGarden_k1').id,
  photo: nil
},
{
  description: 'Walk towards the blue building',
  end_location_id: PathSeeds.l('SCC_k2').id,
  start_location_id: PathSeeds.l('FellowsGarden_k1').id,
  photo: nil
}
###################### End  ###########################################
]
end
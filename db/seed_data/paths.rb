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
{
  description: 'Walk along the road in front of you',
  end_location_id: PathSeeds.l('Library_k1').id,
  start_location_id: PathSeeds.l('Volen_k4').id
},

{
  description: 'Walk along the red brick towards the entrance and here is Libray',
  end_location_id: PathSeeds.l('Library_e1').id,
  start_location_id: PathSeeds.l('Library_k1').id
},

{
  description: 'Turn right and walk towards the crossroads',
  end_location_id: PathSeeds.l('Library_k2').id,
  start_location_id: PathSeeds.l('Library_k1').id
},

{
  description: 'Turn left to the longer road',
  end_location_id: PathSeeds.l('Library_k3').id,
  start_location_id: PathSeeds.l('Library_k2').id
},

{
  description: 'Walk along the road towards the crossroads',
  end_location_id: PathSeeds.l('Library_k4').id,
  start_location_id: PathSeeds.l('Library_k3').id
},

{
  description: 'Walk along the road towards the green house on your right hand',
  end_location_id: PathSeeds.l('Heller_k2').id,
  start_location_id: PathSeeds.l('Library_k4').id
},

{
  description: 'Turn right and walk along the lane to the entrance and here Mandel is',
  end_location_id: PathSeeds.l('Mandel_e1').id,
  start_location_id: PathSeeds.l('Heller_k2').id
},

{
  description: 'Turn left to the parking lot',
  end_location_id: PathSeeds.l('Heller_k1').id,
  start_location_id: PathSeeds.l('Heller_k2').id
},

{
  description: 'Walk towards the side of the building and enter the entrance. Here Heller is',
  end_location_id: PathSeeds.l('Heller_e1').id,
  start_location_id: PathSeeds.l('Heller_k1').id
},

{
  description: 'Walk down to the first crossroads you see on your left side',
  end_location_id: PathSeeds.l('Rabb_k1').id,
  start_location_id: PathSeeds.l('Library_k4').id
},

{
  description: 'Walk up to the building in front of you',
  end_location_id: PathSeeds.l('Rabb_k2').id,
  start_location_id: PathSeeds.l('Rabb_k1').id
},

{
  description: 'Walk through the building and you can see the entrance on your left side. Here Rabb is',
  end_location_id: PathSeeds.l('Rabb_e1').id,
  start_location_id: PathSeeds.l('Rabb_k2').id
},

{
  description: 'Walk down the road to the first stairs you see on your left side',
  end_location_id: PathSeeds.l('Kutz_k3').id,
  start_location_id: PathSeeds.l('Rabb_k1').id
},

{
  description: 'Walk up the stairs',
  end_location_id: PathSeeds.l('Kutz_k2').id,
  start_location_id: PathSeeds.l('Kutz_k3').id
},

{
  description: 'Walk through the parking lot',
  end_location_id: PathSeeds.l('Kutz_k1').id,
  start_location_id: PathSeeds.l('Kutz_k2').id
},

{
  description: 'Walk straight to the building and here Kutz Hall is',
  end_location_id: PathSeeds.l('Kutz_e1').id,
  start_location_id: PathSeeds.l('Kutz_k1').id
},

 ############   opposite direction   ##################
{
  description: 'Exit Heller and walk towards the main road',
  end_location_id: PathSeeds.l('Heller_k1').id,
  start_location_id: PathSeeds.l('Heller_e1').id
},

{
  description: 'Walk to the main road',
  end_location_id: PathSeeds.l('Heller_k2').id,
  start_location_id: PathSeeds.l('Heller_k1').id
},

{
  description: 'Exit Mandel and walk towards the main road',
  end_location_id: PathSeeds.l('Heller_k2').id,
  start_location_id: PathSeeds.l('Mandel_e1').id
},

{
  description: 'Turn right to the first crossroads',
  end_location_id: PathSeeds.l('Library_k4').id,
  start_location_id: PathSeeds.l('Heller_k2').id
},

{
  description: 'Walk along the raod to the crossroads',
  end_location_id: PathSeeds.l('Library_k3').id,
  start_location_id: PathSeeds.l('Library_k4').id
},

{
  description: 'Walk along the road on your right side to the next crossroads',
  end_location_id: PathSeeds.l('Library_k2').id,
  start_location_id: PathSeeds.l('Library_k3').id
},

{
  description: 'Walk along the raod on your right side',
  end_location_id: PathSeeds.l('Library_k1').id,
  start_location_id: PathSeeds.l('Library_k2').id
},

{
  description: 'Exit Libray and walk along the red brick to the road',
  end_location_id: PathSeeds.l('Library_k1').id,
  start_location_id: PathSeeds.l('Library_e1').id
},

{
  description: 'Walk along the raod towards the stairs',
  end_location_id: PathSeeds.l('Volen_k4').id,
  start_location_id: PathSeeds.l('Library_k1').id
},

{
  description: 'Walk up to the first crossroads',
  end_location_id: PathSeeds.l('Library_k4').id,
  start_location_id: PathSeeds.l('Rabb_k1').id
},

{
  description: 'Walk down to the road',
  end_location_id: PathSeeds.l('Rabb_k1').id,
  start_location_id: PathSeeds.l('Rabb_k2').id
},

{
  description: 'Walk out the building and turn right',
  end_location_id: PathSeeds.l('Rabb_k2').id,
  start_location_id: PathSeeds.l('Rabb_e1').id
},

{
  description: 'Walk up to the first crossroads as well as the sideway',
  end_location_id: PathSeeds.l('Rabb_k1').id,
  start_location_id: PathSeeds.l('Kutz_k3').id
},

{
  description: 'Walk down the stairs to the road',
  end_location_id: PathSeeds.l('Kutz_k3').id,
  start_location_id: PathSeeds.l('Kutz_k2').id
},

{
  description: 'Walk through the parking lot to the stairs',
  end_location_id: PathSeeds.l('Kutz_k2').id,
  start_location_id: PathSeeds.l('Kutz_k1').id
},

{
  description: 'Walk out of the building and go straight to the parking lot',
  end_location_id: PathSeeds.l('Kutz_k1').id,
  start_location_id: PathSeeds.l('Kutz_e1').id
}


###################### End  ###########################################

###################### Jing add path below here ###################

###################### End  ###########################################

###################### Xi add path below here #####################

###################### End  ###########################################
]
end
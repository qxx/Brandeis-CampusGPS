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
  start_location_id: PathSeeds.l('Volen_k4').id,
  photo: 'paths/Volen_k4_Library_k1.jpg'
},

{
  description: 'Walk along the red brick towards the entrance and here is Libray',
  end_location_id: PathSeeds.l('Library_e1').id,
  start_location_id: PathSeeds.l('Library_k1').id,
  photo: 'paths/Library_k1_Library_e1.jpg'
},

{
  description: 'Turn right and walk towards the crossroads',
  end_location_id: PathSeeds.l('Library_k2').id,
  start_location_id: PathSeeds.l('Library_k1').id,
  photo: 'paths/Library_k1_Library_k2.jpg'
},

{
  description: 'Turn left to the longer road',
  end_location_id: PathSeeds.l('Library_k3').id,
  start_location_id: PathSeeds.l('Library_k2').id,
  photo: 'paths/Library_k2_Library_k3.jpg'
},

{
  description: 'Walk along the road towards the crossroads',
  end_location_id: PathSeeds.l('Library_k4').id,
  start_location_id: PathSeeds.l('Library_k3').id,
  photo: 'paths/Library_k3_Library_k4.jpg'
},

{
  description: 'Walk along the road towards the green house on your right hand',
  end_location_id: PathSeeds.l('Heller_k2').id,
  start_location_id: PathSeeds.l('Library_k4').id,
  photo: 'paths/Library_k4_Heller_k2.jpg'
},

{
  description: 'Turn right and walk along the lane to the entrance and here Mandel is',
  end_location_id: PathSeeds.l('Mandel_e1').id,
  start_location_id: PathSeeds.l('Heller_k2').id,
  photo: 'paths/Heller_k2_Mandel_e1.jpg'
},

{
  description: 'Turn left to the parking lot',
  end_location_id: PathSeeds.l('Heller_k1').id,
  start_location_id: PathSeeds.l('Heller_k2').id,
  photo: 'paths/Heller_k2_Heller_k1.jpg'
},

{
  description: 'Walk towards the side of the building and enter the entrance. Here Heller is',
  end_location_id: PathSeeds.l('Heller_e1').id,
  start_location_id: PathSeeds.l('Heller_k1').id,
  photo: 'paths/Heller_k1_Heller_e1.jpg'
},

{
  description: 'Walk down to the first crossroads you see on your left side',
  end_location_id: PathSeeds.l('Rabb_k1').id,
  start_location_id: PathSeeds.l('Library_k4').id,
  photo: 'paths/Library_k4_Rabb_k1.jpg'
},

{
  description: 'Walk up to the building in front of you',
  end_location_id: PathSeeds.l('Rabb_k2').id,
  start_location_id: PathSeeds.l('Rabb_k1').id,
  photo: 'paths/Rabb_k1_Rabb_k2.jpg'
},

{
  description: 'Walk through the building and you can see the entrance on your left side. Here Rabb is',
  end_location_id: PathSeeds.l('Rabb_e1').id,
  start_location_id: PathSeeds.l('Rabb_k2').id,
  photo: 'paths/Rabb_k2_Rabb_e1.jpg'
},

{
  description: 'Walk through the building towards the first intersection',
  end_location_id: PathSeeds.l('Rabb_k3').id,
  start_location_id: PathSeeds.l('Rabb_k2').id,
  photo: 'paths/Rabb_k2_Rabb_k3.jpg'
},

{
  description: 'Walk towards the building on your left side and here Olin-sang is',
  end_location_id: PathSeeds.l('Olin-Sang_e1').id,
  start_location_id: PathSeeds.l('Rabb_k3').id,
  photo: 'paths/Rabb_k3_Olin-Sang_e1.jpg'
},

{
  description: 'Walk to the first crossroads',
  end_location_id: PathSeeds.l('Shiffman_k1').id,
  start_location_id: PathSeeds.l('Rabb_k3').id,
  photo: 'paths/Rabb_k3_Shiffman_k1.jpg'
},

{
  description: 'Walk to the building on your right side and here Shiffman is',
  end_location_id: PathSeeds.l('Shiffman_e1').id,
  start_location_id: PathSeeds.l('Shiffman_k1').id,
  photo: 'paths/Shiffman_k1_Shiffman_e1.jpg'
},

{
  description: 'Turn left and walk by the lown on your right side',
  end_location_id: PathSeeds.l('Golding_k1').id,
  start_location_id: PathSeeds.l('Shiffman_k1').id,
  photo: 'paths/Shiffman_k1_Golding_k1.jpg'
},

{
  description: 'Turn to the intersection in front of two buildings',
  end_location_id: PathSeeds.l('Golding_k2').id,
  start_location_id: PathSeeds.l('Golding_k1').id,
  photo: 'paths/Golding_k1_Golding_k2.jpg'
},

{
  description: 'Turn left and walk to the building in front of you and here Golding is ',
  end_location_id: PathSeeds.l('Golding_e1').id,
  start_location_id: PathSeeds.l('Golding_k2').id,
  photo: 'paths/Golding_k2_Golding_e1.jpg'
},

{
  description: 'Walk to the building in front of you and here Lown is',
  end_location_id: PathSeeds.l('Lown_e1').id,
  start_location_id: PathSeeds.l('Golding_k2').id,
  photo: 'paths/Golding_k2_Lown_e1.jpg'
},

{
  description: 'Walk down the road to the first stairs you see on your left side',
  end_location_id: PathSeeds.l('Kutz_k3').id,
  start_location_id: PathSeeds.l('Rabb_k1').id,
  photo: 'paths/Rabb_k1_Kutz_k3.jpg'
},

{
  description: 'Walk up the stairs',
  end_location_id: PathSeeds.l('Kutz_k2').id,
  start_location_id: PathSeeds.l('Kutz_k3').id,
  photo: 'paths/Kutz_k3_Kutz_k2.jpg'
},

{
  description: 'Walk through the parking lot',
  end_location_id: PathSeeds.l('Kutz_k1').id,
  start_location_id: PathSeeds.l('Kutz_k2').id,
  photo: 'paths/Kutz_k2_Kutz_k1.jpg'
},

{
  description: 'Walk straight to the building and here Kutz Hall is',
  end_location_id: PathSeeds.l('Kutz_e1').id,
  start_location_id: PathSeeds.l('Kutz_k1').id,
  photo: 'paths/Kutz_k1_Kutz_e1.jpg'
},

 ############   opposite direction   ##################

{
  description: 'Exit Heller and walk towards the main road',
  end_location_id: PathSeeds.l('Heller_k1').id,
  start_location_id: PathSeeds.l('Heller_e1').id,
  photo: 'paths/Heller_e1_Heller_k1.jpg'
},

{
  description: 'Walk to the main road',
  end_location_id: PathSeeds.l('Heller_k2').id,
  start_location_id: PathSeeds.l('Heller_k1').id,
  photo: 'paths/Heller_k1_Heller_k2.jpg'
},

{
  description: 'Exit Mandel and walk towards the main road',
  end_location_id: PathSeeds.l('Heller_k2').id,
  start_location_id: PathSeeds.l('Mandel_e1').id,
  photo: 'paths/Mandel_e1_Heller_k2.jpg'
},

{
  description: 'Turn right to the first crossroads',
  end_location_id: PathSeeds.l('Library_k4').id,
  start_location_id: PathSeeds.l('Heller_k2').id,
  photo: 'paths/Heller_k2_Library_k4.jpg'
},

{
  description: 'Walk along the raod to the crossroads',
  end_location_id: PathSeeds.l('Library_k3').id,
  start_location_id: PathSeeds.l('Library_k4').id,
  photo: 'paths/Library_k4_Library_k3.jpg'
},

{
  description: 'Walk along the road on your right side to the next crossroads',
  end_location_id: PathSeeds.l('Library_k2').id,
  start_location_id: PathSeeds.l('Library_k3').id,
  photo: 'paths/Library_k3_Library_k2.jpg'
},

{
  description: 'Walk along the raod on your right side',
  end_location_id: PathSeeds.l('Library_k1').id,
  start_location_id: PathSeeds.l('Library_k2').id,
  photo: 'paths/Library_k2_Library_k1.jpg'
},

{
  description: 'Exit Libray and walk along the red brick to the road',
  end_location_id: PathSeeds.l('Library_k1').id,
  start_location_id: PathSeeds.l('Library_e1').id,
  photo: 'paths/Library_e1_Library_k1.jpg'
},

{
  description: 'Walk along the raod towards the stairs',
  end_location_id: PathSeeds.l('Volen_k4').id,
  start_location_id: PathSeeds.l('Library_k1').id,
  photo: 'paths/Library_k1_Volen_k4.jpg'
},

{
  description: 'Walk up to the first crossroads',
  end_location_id: PathSeeds.l('Library_k4').id,
  start_location_id: PathSeeds.l('Rabb_k1').id,
  photo: 'paths/Rabb_k1_Library_k4.jpg'
},

{
  description: 'Walk down to the road',
  end_location_id: PathSeeds.l('Rabb_k1').id,
  start_location_id: PathSeeds.l('Rabb_k2').id,
  photo: 'paths/Rabb_k2_Rabb_k1.jpg'
},

{
  description: 'Walk out the building and turn right',
  end_location_id: PathSeeds.l('Rabb_k2').id,
  start_location_id: PathSeeds.l('Rabb_e1').id,
  photo: 'paths/Rabb_e1_Rabb_k2.jpg'
},

{
  description: 'Walk through the building in front of you',
  end_location_id: PathSeeds.l('Rabb_k2').id,
  start_location_id: PathSeeds.l('Rabb_k3').id,
  photo: 'paths/Rabb_k3_Rabb_k2.jpg'
},

{
  description: 'Walk out the building to the intersection in front of you',
  end_location_id: PathSeeds.l('Rabb_k3').id,
  start_location_id: PathSeeds.l('Olin-Sang_e1').id,
  photo: 'paths/Olin-Sang_e1_Rabb_k3.jpg'
},

{
  description: 'Walk through the road on your left side to the first intersection',
  end_location_id: PathSeeds.l('Rabb_k3').id,
  start_location_id: PathSeeds.l('Shiffman_k1').id,
  photo: 'paths/Shiffman_k1_Rabb_k3.jpg'
},

{
  description: 'Walk out the building to the first intersection',
  end_location_id: PathSeeds.l('Shiffman_k1').id,
  start_location_id: PathSeeds.l('Shiffman_e1').id,
  photo: 'paths/Shiffman_e1_Shiffman_k1.jpg'
},

{
  description: 'Walk by the lown on your right side',
  end_location_id: PathSeeds.l('Shiffman_k1').id,
  start_location_id: PathSeeds.l('Golding_k1').id,
  photo: 'paths/Golding_k1_Shiffman_k1.jpg'
},

{
  description: 'Turn right to the road on your right side',
  end_location_id: PathSeeds.l('Golding_k1').id,
  start_location_id: PathSeeds.l('Golding_k2').id,
  photo: 'paths/Golding_k2_Golding_k1.jpg'
},

{
  description: 'Walk out the building to the first intersection',
  end_location_id: PathSeeds.l('Golding_k2').id,
  start_location_id: PathSeeds.l('Golding_e1').id,
  photo: 'paths/Golding_e1_Golding_k2.jpg'
},

{
  description: 'Walk out the building to the first intersection',
  end_location_id: PathSeeds.l('Golding_k2').id,
  start_location_id: PathSeeds.l('Lown_e1').id,
  photo: 'paths/Lown_e1_Golding_k2.jpg'
},

{
  description: 'Walk up to the first crossroads as well as the sideway',
  end_location_id: PathSeeds.l('Rabb_k1').id,
  start_location_id: PathSeeds.l('Kutz_k3').id,
  photo: 'paths/Kutz_k3_Rabb_k1.jpg'
},

{
  description: 'Walk down the stairs to the road',
  end_location_id: PathSeeds.l('Kutz_k3').id,
  start_location_id: PathSeeds.l('Kutz_k2').id,
  photo: 'paths/Kutz_k2_Kutz_k3.jpg'
},

{
  description: 'Walk through the parking lot to the stairs',
  end_location_id: PathSeeds.l('Kutz_k2').id,
  start_location_id: PathSeeds.l('Kutz_k1').id,
  photo: 'paths/Kutz_k1_Kutz_k2.jpg'
},

{
  description: 'Walk out of the building and go straight to the parking lot',
  end_location_id: PathSeeds.l('Kutz_k1').id,
  start_location_id: PathSeeds.l('Kutz_e1').id,
  photo: 'paths/Kutz_e1_Kutz_k1.jpg'
},


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
  photo: 'paths/SCC_k3_SCC_e1.jpg'
},
{
  description: "Exit SCC",
  start_location_id: PathSeeds.l('SCC_e1').id,
  end_location_id: PathSeeds.l('SCC_k3').id,
  photo: 'paths/SCC_e1_SCC_k3.jpg'
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
  photo: 'paths/SCC_k6_SCC_e3.jpg'
},
{
  description: "Take the right path and walk down",
  start_location_id: PathSeeds.l('SCC_k6').id,
  end_location_id: PathSeeds.l('SCC_k7').id,
  photo: 'paths/SCC_k6_SCC_k7.jpg'
},
{
  description: "Continue walking up the street",
  start_location_id: PathSeeds.l('SCC_k7').id,
  end_location_id: PathSeeds.l('SCC_k6').id,
  photo: 'paths/SCC_k7_SCC_k6.jpg'
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
  photo: 'paths/SCC_k8_SCC_k7.jpg'
},
{
  description: "Walk across the road",
  start_location_id: PathSeeds.l('SCC_k8').id,
  end_location_id: PathSeeds.l('Admissions_k1').id,
  photo: 'paths/SCC_k8_Admissions_k1.jpg'
},
{
  description: "Walk across the road",
  start_location_id: PathSeeds.l('Admissions_k1').id,
  end_location_id: PathSeeds.l('SCC_k8').id,
  photo: 'paths/Admissions_k1_SCC_k8.jpg'
},
{
  description: "Walk along the back of the Admissions building",
  start_location_id: PathSeeds.l('Admissions_k1').id,
  end_location_id: PathSeeds.l('TheaterLot_k1').id,
  photo: 'paths/Admissions_k1_TheaterLot_k1.jpg'
},
{
  description: "Walk along the back of the Admissions building",
  start_location_id: PathSeeds.l('TheaterLot_k1').id,
  end_location_id: PathSeeds.l('Admissions_k1').id,
  photo: 'paths/TheaterLot_k1_Admissions_k1.jpg'
},
{
  description: "Enter Theater Lot",
  start_location_id: PathSeeds.l('TheaterLot_k1').id,
  end_location_id: PathSeeds.l('TheaterLot_p1').id,
  photo: 'paths/TheaterLot_k1_TheaterLot_p1.jpg'
},
{
  description: "Walk towards the circular building and exit Theater Lot",
  start_location_id: PathSeeds.l('TheaterLot_p1').id,
  end_location_id: PathSeeds.l('TheaterLot_k1').id,
  photo: 'paths/TheaterLot_p1_TheaterLot_k1.jpg'
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
  photo: 'paths/SCC_k3_SCC_k2.jpg'
},
{
  description: "Walk towards SCC",
  start_location_id: PathSeeds.l('SCC_k2').id,
  end_location_id: PathSeeds.l('SCC_k3').id,
  photo: 'paths/SCC_k2_SCC_k3.jpg'
},
{
  description: 'Walk towards Science Complex',
  start_location_id: PathSeeds.l('SCC_k2').id,
  end_location_id: PathSeeds.l('FellowsGarden_k1').id,
  photo: 'paths/SCC_k2_FellowsGarden_k1.jpg'
},
{
  description: 'Walk towards the blue building',
  end_location_id: PathSeeds.l('SCC_k2').id,
  start_location_id: PathSeeds.l('FellowsGarden_k1').id,
  photo: nil
},















{
  description: 'From stop sign, walk up the street',
  end_location_id: PathSeeds.l('Rosenstiel_k2').id,
  start_location_id: PathSeeds.l('Rosenstiel_k1').id,
  photo: nil
},
{
  description: 'Walk down the street to stop sign',
  end_location_id: PathSeeds.l('Rosenstiel_k1').id,
  start_location_id: PathSeeds.l('Rosenstiel_k2').id,
  photo: nil
},
{
  description: 'Walk upwards towards the castle which will be on your right',
  end_location_id: PathSeeds.l('Rosenstiel_k3').id,
  start_location_id: PathSeeds.l('Rosenstiel_k2').id,
  photo: nil
},
{
  description: 'Walk down away from the castle',
  end_location_id: PathSeeds.l('Rosenstiel_k2').id,
  start_location_id: PathSeeds.l('Rosenstiel_k3').id,
  photo: nil
},
{
  description: 'Walk along the parking lot on the right to stop sign',
  end_location_id: PathSeeds.l('Rosenstiel_k1').id,
  start_location_id: PathSeeds.l('Rubenstein_k1').id,
  photo: nil
},
{
  description: 'Take the right road with no guard rail, alongside the parking lot',
  end_location_id: PathSeeds.l('Rubenstein_k1').id,
  start_location_id: PathSeeds.l('Rosenstiel_k1').id,
  photo: nil
},
{
  description: 'Turn right and take loop road left alongside the parking lot',
  end_location_id: PathSeeds.l('Rosenstiel_k1').id,
  start_location_id: PathSeeds.l('Rubenstein_k1').id,
  photo: nil
},
{
  description: 'Go right and take the immediate left to the middle road with no guard rail',
  end_location_id: PathSeeds.l('Rubenstein_k2').id,
  start_location_id: PathSeeds.l('Rubenstein_k1').id,
  photo: nil
},
{
  description: 'Turn right and take loop road left alongside the parking lot',
  end_location_id: PathSeeds.l('Rubenstein_k1').id,
  start_location_id: PathSeeds.l('Rubenstein_k2').id,
  photo: nil
},
{
  description: 'Take the road farthest to the right with the guard rail',
  end_location_id: PathSeeds.l('Rubenstein_k3').id,
  start_location_id: PathSeeds.l('Rubenstein_k1').id,
  photo: nil
},
{
  description: 'Turn right and take loop road left alongside the parking lot',
  end_location_id: PathSeeds.l('Rubenstein_k1').id,
  start_location_id: PathSeeds.l('Rubenstein_k3').id,
  photo: nil
},
{
  description: 'Follow the road down to the tall smokestack to your right',
  end_location_id: PathSeeds.l('Rubenstein_k4').id,
  start_location_id: PathSeeds.l('Rubenstein_k3').id,
  photo: nil
},
{
  description: 'Continue upwards to the intersection',
  end_location_id: PathSeeds.l('Rubenstein_k3').id,
  start_location_id: PathSeeds.l('Rubenstein_k4').id,
  photo: nil
},
{
  description: 'Continue until the sidewalk ends and take the left road',
  end_location_id: PathSeeds.l('Rubenstein_k5').id,
  start_location_id: PathSeeds.l('Rubenstein_k4').id,
  photo: nil
},
{
  description: 'Follow the road right passed the smokestack on your left',
  end_location_id: PathSeeds.l('Rubenstein_k4').id,
  start_location_id: PathSeeds.l('Rubenstein_k5').id,
  photo: nil
},
{
  description: 'Continue upwards and you will see Pomerantz of East Quad',
  end_location_id: PathSeeds.l('Rubenstein_k6').id,
  start_location_id: PathSeeds.l('Rubenstein_k5').id,
  photo: nil
},
{
  description: 'Walk past the parking lot on the left, but continue right on the road.',
  end_location_id: PathSeeds.l('Rubenstein_k5').id,
  start_location_id: PathSeeds.l('Rubenstein_k6').id,
  photo: nil
},
{
  description: 'Follow the road to North Quad',
  end_location_id: PathSeeds.l('Rubenstein_k7').id,
  start_location_id: PathSeeds.l('Rubenstein_k2').id,
  photo: nil
},
{
  description: 'Pass the stairs on you right and continue toward the intersection',
  end_location_id: PathSeeds.l('Rubenstein_k2').id,
  start_location_id: PathSeeds.l('Rubenstein_k7').id,
  photo: nil
},
{
  description: 'Continue up loop road, castle should be immediately left',
  end_location_id: PathSeeds.l('Rubenstein_k8').id,
  start_location_id: PathSeeds.l('Rubenstein_k1').id,
  photo: nil
},
{
  description: 'Continue down loop road with castle on your right',
  end_location_id: PathSeeds.l('Rubenstein_k1').id,
  start_location_id: PathSeeds.l('Rubenstein_k8').id,
  photo: nil
},
{
  description: 'Walk down the stairs to Northa Quad',
  end_location_id: PathSeeds.l('Rubenstein_k7').id,
  start_location_id: PathSeeds.l('Rubenstein_k8').id,
  photo: nil
},
{
  description: 'Walk up the stairs to the castle and you will be on loop road',
  end_location_id: PathSeeds.l('Rubenstein_k8').id,
  start_location_id: PathSeeds.l('Rubenstein_k7').id,
  photo: nil
},
{
  description: 'Walk to the left of the buildings to the second set of stairs on your left',
  end_location_id: PathSeeds.l('Rubenstein_k9').id,
  start_location_id: PathSeeds.l('Rubenstein_k7').id,
  photo: nil
},
{
  description: 'Walk to the right of the buildings to the next set of stairs on your right',
  end_location_id: PathSeeds.l('Rubenstein_k7').id,
  start_location_id: PathSeeds.l('Rubenstein_k9').id,
  photo: nil
},
{
  description: 'Continue up loop road until there is another set of stairs on the right',
  end_location_id: PathSeeds.l('Rubenstein_k10').id,
  start_location_id: PathSeeds.l('Rubenstein_k8').id,
  photo: nil
},
{
  description: 'Continue down loop road until there is another set of stairs on the left',
  end_location_id: PathSeeds.l('Rubenstein_k8').id,
  start_location_id: PathSeeds.l('Rubenstein_k10').id,
  photo: nil
},
{
  description: 'Walk up the stairs to the castle and you will be on loop road',
  end_location_id: PathSeeds.l('Rubenstein_k10').id,
  start_location_id: PathSeeds.l('Rubenstein_k9').id,
  photo: nil
},
{
  description: 'Walk down the stairs away from castle and into North Quad',
  end_location_id: PathSeeds.l('Rubenstein_k9').id,
  start_location_id: PathSeeds.l('Rubenstein_k10').id,
  photo: nil
},
{
  description: 'Walk to the bottom of the ramp on the left, Hassenfeld will be on your right',
  end_location_id: PathSeeds.l('Rubenstein_k11').id,
  start_location_id: PathSeeds.l('Rubenstein_k9').id,
  photo: nil
},
{
  description: 'Walk up the ramp and you will be on loop road at an intersection',
  end_location_id: PathSeeds.l('Rubenstein_k16').id,
  start_location_id: PathSeeds.l('Rubenstein_k11').id,
  photo: nil
},
{
  description: 'Continue up loop road until you reach the intersection',
  end_location_id: PathSeeds.l('Rubenstein_k16').id,
  start_location_id: PathSeeds.l('Rubenstein_k10').id,
  photo: nil
},
{
  description: 'Castle should be on your right, walk to the 3-way intersection',
  end_location_id: PathSeeds.l('Usdan_k1').id,
  start_location_id: PathSeeds.l('Rosenstiel_k3').id,
  photo: nil
},
{
  description: 'Take either the left road, or the stairs straight ahead to Usdan',
  end_location_id: PathSeeds.l('Usdan_k2').id,
  start_location_id: PathSeeds.l('Usdan_k1').id,
  photo: nil
},
{
  description: 'Take the left road down to the next intersection with castle on your left',
  end_location_id: PathSeeds.l('Usdan_k1').id,
  start_location_id: PathSeeds.l('Rubenstein_k16').id,
  photo: nil
},
{
  description: 'With the castle on your right, continue up to the next intersection with loop road',
  end_location_id: PathSeeds.l('Rubenstein_k16').id,
  start_location_id: PathSeeds.l('Usdan_k1').id,
  photo: nil
},
{
  description: 'Continue walking with Usdan on your right',
  end_location_id: PathSeeds.l('Usdan_k3').id,
  start_location_id: PathSeeds.l('Usdan_k2').id,
  photo: nil
},
{
  description: 'Walk right passed the statue and under the overhead building bridge to Usdan',
  end_location_id: PathSeeds.l('Usdan_k4').id,
  start_location_id: PathSeeds.l('Usdan_k3').id,
  photo: nil
},
{
  description: 'Walk left passed the statue and under the overhead building bridge to Usdan',
  end_location_id: PathSeeds.l('Usdan_k4').id,
  start_location_id: PathSeeds.l('Usdan_k2').id,
  photo: nil
}
###################### End  ###########################################
]
end
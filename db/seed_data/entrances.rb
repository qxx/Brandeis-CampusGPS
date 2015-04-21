module EntranceSeeds
  def EntranceSeeds.b(name)
    Building.find_by!(code_name:name)
  end

  def EntranceSeeds.l(name)
    Location.find_by!(code_name:name)
  end

  def EntranceSeeds.f(name)
    Floor.find_by!(code_name:name)
  end

  ENTRANCES = [
    {
      building_id: EntranceSeeds.b('SSC').id,
      location_id: EntranceSeeds.l('SSC_e1').id,
      floor_id: EntranceSeeds.f('SSC_GL').id
    },
    {
      building_id: EntranceSeeds.b('SSC').id,
      location_id: EntranceSeeds.l('SSC_e2').id,
      floor_id: EntranceSeeds.f('SSC_LL').id
    },
    {
      building_id: EntranceSeeds.b('Volen').id,
      location_id: EntranceSeeds.l('Volen_e1').id,
      floor_id: EntranceSeeds.f('Volen_1').id
    },
    {
      building_id: EntranceSeeds.b('Heller').id,
      location_id: EntranceSeeds.l('Heller_e1').id
    },
    {
      building_id: EntranceSeeds.b('Mandel').id,
      location_id: EntranceSeeds.l('Mandel_e1').id
    },
    {
      building_id: EntranceSeeds.b('SCC').id,
      location_id: EntranceSeeds.l('SCC_e1').id
    },
###################### Ted add entrance below here ####################

###################### End  ###########################################

###################### Wan add entrance below here ####################
    {
      building_id: EntranceSeeds.b('Library').id,
      location_id: EntranceSeeds.l('Library_e1').id,
      photo:'entrances/Library_e1.jpg'
    },

    {
      building_id: EntranceSeeds.b('Rabb').id,
      location_id: EntranceSeeds.l('Rabb_e1').id,
      photo:'entrances/Rabb_e1.jpg'
    },

    {
      building_id: EntranceSeeds.b('Olin-Sang').id,
      location_id: EntranceSeeds.l('Olin-Sang_e1').id,
      photo:'entrances/Olin-Sang_e1.jpg'
    },

    {
      building_id: EntranceSeeds.b('Shiffman').id,
      location_id: EntranceSeeds.l('Shiffman_e1').id,
      photo:'entrances/Shiffman_e1.jpg'
    },

    {
      building_id: EntranceSeeds.b('Golding').id,
      location_id: EntranceSeeds.l('Golding_e1').id,
      photo:'entrances/Golding_e1.jpg'
    },

    {
      building_id: EntranceSeeds.b('Lown').id,
      location_id: EntranceSeeds.l('Lown_e1').id,
      photo:'entrances/Lown_e1.jpg'
    },

    {
      building_id: EntranceSeeds.b('Kutz').id,
      location_id: EntranceSeeds.l('Kutz_e1').id,
      photo:'entrances/Kutz_e1.jpg'
    },
###################### End  ###########################################

###################### Jing add entrance below here ###################

###################### End  ###########################################

###################### Xi add entrance below here #####################
    {
      building_id: EntranceSeeds.b('SSC').id,
      location_id: EntranceSeeds.l('SSC_e2').id
    },
    {
      building_id: EntranceSeeds.b('SCC').id,
      location_id: EntranceSeeds.l('SCC_e3').id
    }

###################### End  ###########################################
  ]

end

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
      floor_id: EntranceSeeds.f('SSC_UL').id
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
    }
  ]

end

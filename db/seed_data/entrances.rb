module EntranceSeeds
  def EntranceSeeds.b(name)
    Building.find_by!(code_name:name)
  end

  def EntranceSeeds.l(name)
    Location.find_by!(code_name:name)
  end

  ENTRANCES = [
    {
      building_id: EntranceSeeds.b('SSC').id,
      location_id: EntranceSeeds.l('SSC_e1').id
    },
    {
      building_id: EntranceSeeds.b('Volen').id,
      location_id: EntranceSeeds.l('Volen_e1').id
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

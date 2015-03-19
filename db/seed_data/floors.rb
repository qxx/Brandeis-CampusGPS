module FloorSeeds
  def FloorSeeds.b(name)
    Building.find_by(code_name:name)
  end

  FLOORS = [
    {
      code_name: 'Volen_1',
      level: '1',
      floorplan: 'floorplans/Volen_1.jpg',
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'SSC_UL',
      level: 'Upper Level',
      building_id: FloorSeeds.b('SSC').id
    },
    {
      code_name: 'SSC_LL',
      level: 'Lower Level',
      building_id: FloorSeeds.b('SSC').id
    }

  ]
end
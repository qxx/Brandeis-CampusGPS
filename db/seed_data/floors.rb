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
      code_name: 'Volen_2',
      level: '2',
      floorplan: 'floorplans/Volen_2.jpg',
      building_id: FloorSeeds.b('Volen').id
    },
        {
      code_name: 'Volen_3',
      level: '3',
      floorplan: 'floorplans/Volen_3.jpg',
      building_id: FloorSeeds.b('Volen').id
    },
        {
      code_name: 'Volen_4',
      level: '4',
      floorplan: 'floorplans/Volen_4.jpg',
      building_id: FloorSeeds.b('Volen').id
    },
        {
      code_name: 'Volen_Lower',
      level: '-1',
      floorplan: 'floorplans/Volen_Lower.jpg',
      building_id: FloorSeeds.b('Volen').id
    },
        {
      code_name: 'Volen_Roof',
      level: '5',
      floorplan: 'floorplans/Volen_Roof.jpg',
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_2',
      level: '2',
      floorplan: 'floorplans/Volen_2.jpg',
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_3',
      level: '3',
      floorplan: 'floorplans/Volen_3.jpg',
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_4',
      level: '4',
      floorplan: 'floorplans/Volen_4.jpg',
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_Lower',
      level: 'Lower',
      floorplan: 'floorplans/Volen_Lower.jpg',
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_Roof',
      level: 'Roof',
      floorplan: 'floorplans/Volen_Roof.jpg',
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
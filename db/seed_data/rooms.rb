 module RoomSeeds
  def RoomSeeds.b(name)
    Building.find_by(code_name:name)
  end

  def RoomSeeds.f(name)
    Floor.find_by(code_name:name)
  end


  ROOMS = [
    {
      code_name: 'Volen_101',
      name: '101',
      doortag: '101',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_102',
      name: '102',
      doortag: '102',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_103',
      name: '103',
      doortag: '103',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_104',
      name: '104',
      doortag: '104',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_105',
      name: '105',
      doortag: '105',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_106',
      name: '106',
      doortag: '106',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_107',
      name: '107',
      doortag: '107',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_108',
      name: '108',
      doortag: '108',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_109',
      name: '109',
      doortag: '109',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_110',
      name: '110',
      doortag: '110',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_111',
      name: '111',
      doortag: '111',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_112',
      name: '112',
      doortag: '112',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_113',
      name: '113',
      doortag: '113',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_114',
      name: '114',
      doortag: '114',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_115',
      name: '115',
      doortag: '115',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_117',
      name: '117',
      doortag: '117',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_118',
      name: '118',
      doortag: '118',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_119',
      name: '119',
      doortag: '119',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_120',
      name: '120',
      doortag: '120',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_121',
      name: '121',
      doortag: '121',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_122',
      name: '122',
      doortag: '122',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_123',
      name: '123',
      doortag: '123',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_124',
      name: '124',
      doortag: '124',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_125',
      name: '125',
      doortag: '125',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_126',
      name: '126',
      doortag: '126',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_127',
      name: '127',
      doortag: '127',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_128',
      name: '128',
      doortag: '128',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_130',
      name: '130',
      doortag: '130',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_131',
      name: '131',
      doortag: '131',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_132',
      name: '132',
      doortag: '132',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_133',
      name: '133',
      doortag: '133',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_134',
      name: '134',
      doortag: '134',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_135',
      name: '135',
      doortag: '135',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_136',
      name: '136',
      doortag: '136',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_137',
      name: '137',
      doortag: '137',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_138',
      name: '138',
      doortag: '138',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_139',
      name: '139',
      doortag: '139',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_140',
      name: '140',
      doortag: '140',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_141',
      name: '141',
      doortag: '141',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_142',
      name: '142',
      doortag: '142',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_143',
      name: '143',
      doortag: '143',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_144',
      name: '144',
      doortag: '144',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_145',
      name: '145',
      doortag: '145',
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    }
  ]
end
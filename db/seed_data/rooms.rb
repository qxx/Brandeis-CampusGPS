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
      floorplan_x: 316,
      floorplan_y: 1248,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_102',
      name: '102',
      doortag: '102',
      floorplan_x: 680,
      floorplan_y: 1122,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_103',
      name: '103',
      doortag: '103',
      floorplan_x: 494,
      floorplan_y: 1326,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_104',
      name: 'Vertica',
      doortag: '104',
      floorplan_x: 654,
      floorplan_y: 1366,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_105',
      name: '105',
      doortag: '105',
      floorplan_x: 878,
      floorplan_y: 1372,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_106',
      name: '106',
      doortag: '106',
      floorplan_x: 1106,
      floorplan_y: 1366,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_107',
      name: '107',
      doortag: '107',
      floorplan_x: 1250,
      floorplan_y: 1406,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_108',
      name: '108',
      doortag: '108',
      floorplan_x: 1722,
      floorplan_y: 1204,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_109',
      name: '109',
      doortag: '109',
      floorplan_x: 1352,
      floorplan_y: 1410,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_110',
      name: '110',
      doortag: '110',
      floorplan_x: 1602,
      floorplan_y: 1396,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_111',
      name: '111',
      doortag: '111',
      floorplan_x: 1822,
      floorplan_y: 1400,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_112',
      name: '112',
      doortag: '112',
      floorplan_x: 2078,
      floorplan_y: 1292,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_113',
      name: '113',
      doortag: '113',
      floorplan_x: 1958,
      floorplan_y: 1286,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_114',
      name: '114',
      doortag: '114',
      floorplan_x: 1946,
      floorplan_y: 1378,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_115',
      name: '115',
      doortag: '115',
      floorplan_x: 2256,
      floorplan_y: 1272,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_117',
      name: '117',
      doortag: '117',
      floorplan_x: 2500,
      floorplan_y: 1290,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_118',
      name: '118',
      doortag: '118',
      floorplan_x: 2650,
      floorplan_y: 1192,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_119',
      name: '119',
      doortag: '119',
      floorplan_x: 2906,
      floorplan_y: 1192,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_120',
      name: '120',
      doortag: '120',
      floorplan_x: 2560,
      floorplan_y: 1002,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_121',
      name: '121',
      doortag: '121',
      floorplan_x: 2454,
      floorplan_y: 1112,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_122',
      name: '122',
      doortag: '122',
      floorplan_x: 2344,
      floorplan_y: 1202,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_123',
      name: '123',
      doortag: '123',
      floorplan_x: 2244,
      floorplan_y: 1062,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_124',
      name: 'Antonella DiLillo',
      doortag: '124',
      floorplan_x: 2344,
      floorplan_y: 1020,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_125',
      name: '125',
      doortag: '125',
      floorplan_x: 2120,
      floorplan_y: 1020,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_126',
      name: '126',
      doortag: '126',
      floorplan_x: 2186,
      floorplan_y: 1114,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_127',
      name: '127',
      doortag: '127',
      floorplan_x: 2184,
      floorplan_y: 1160,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_128',
      name: '128',
      doortag: '128',
      floorplan_x: 2130,
      floorplan_y: 1160,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_130',
      name: '130',
      doortag: '130',
      floorplan_x: 2148,
      floorplan_y: 1132,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_131',
      name: '131',
      doortag: '131',
      floorplan_x: 2126,
      floorplan_y: 1116,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_132',
      name: '132',
      doortag: '132',
      floorplan_x: 1966,
      floorplan_y: 1132,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_133',
      name: '133',
      doortag: '133',
      floorplan_x: 1952,
      floorplan_y: 1032,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_134',
      name: '134',
      doortag: '134',
      floorplan_x: 1872,
      floorplan_y: 1068,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_135',
      name: 'Pengyu Hong',
      doortag: '135',
      floorplan_x: 1772,
      floorplan_y: 1068,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_136',
      name: 'Nianwen Xue',
      doortag: '136',
      floorplan_x: 1674,
      floorplan_y: 1068,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_137',
      name: 'Mitch Cherniack',
      doortag: '137',
      floorplan_x: 1564,
      floorplan_y: 1068,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_138',
      name: 'Tim Hickey',
      doortag: '138',
      floorplan_x: 1464,
      floorplan_y: 1068,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_139',
      name: 'Olga Papaemmanouil',
      doortag: '139',
      floorplan_x: 1348,
      floorplan_y: 1068,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_140',
      name: '140',
      doortag: '140',
      floorplan_x: 1140,
      floorplan_y: 1174,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_142',
      name: '142',
      doortag: '142',
      floorplan_x: 492,
      floorplan_y: 1138,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_143',
      name: '143',
      doortag: '143',
      floorplan_x: 456,
      floorplan_y: 1070,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_144',
      name: '144',
      doortag: '144',
      floorplan_x: 530,
      floorplan_y: 1062,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_145',
      name: '145',
      doortag: '145',
      floorplan_x: 476,
      floorplan_y: 1008,
      floor_id: RoomSeeds.f('Volen_1').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_201',
      name: '201',
      doortag: '201',
      floorplan_x: 200,
      floorplan_y: 1356,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_202',
      name: '202',
      doortag: '202',
      floorplan_x: 688,
      floorplan_y: 1348,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_203',
      name: '203',
      doortag: '203',
      floorplan_x: 388,
      floorplan_y: 1424,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_204',
      name: '204',
      doortag: '204',
      floorplan_x: 544,
      floorplan_y: 1416,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_205',
      name: '205',
      doortag: '205',
      floorplan_x: 1300,
      floorplan_y: 1460,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_206',
      name: '206',
      doortag: '206',
      floorplan_x: 828,
      floorplan_y: 1576,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_206A',
      name: '206A',
      doortag: '206A',
      floorplan_x: 980,
      floorplan_y: 1528,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_207',
      name: '207',
      doortag: '207',
      floorplan_x: 612,
      floorplan_y: 1500,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_208',
      name: '208',
      doortag: '208',
      floorplan_x: 548,
      floorplan_y: 1668,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_209',
      name: '209',
      doortag: '209',
      floorplan_x: 684,
      floorplan_y: 1668,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_210',
      name: '210',
      doortag: '210',
      floorplan_x: 960,
      floorplan_y: 1668,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_211',
      name: '211',
      doortag: '211',
      floorplan_x: 960,
      floorplan_y: 1356,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_212',
      name: 'Rick Alterman',
      doortag: '212',
      floorplan_x: 1084,
      floorplan_y: 1668,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },{
      code_name: 'Volen_213',
      name: 'Jordan Pollack',
      doortag: '213',
      floorplan_x: 1220,
      floorplan_y: 1668,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_214',
      name: '214',
      doortag: '214',
      floorplan_x: 1360,
      floorplan_y: 1668,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_215',
      name: '215',
      doortag: '215',
      floorplan_x: 1496,
      floorplan_y: 1668,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_216',
      name: '216',
      doortag: '216',
      floorplan_x: 1624,
      floorplan_y: 1668,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_217',
      name: '217',
      doortag: '217',
      floorplan_x: 1752,
      floorplan_y: 1668,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_219',
      name: '219',
      doortag: '219',
      floorplan_x: 1752,
      floorplan_y: 1444,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_220',
      name: '220',
      doortag: '220',
      floorplan_x: 2024,
      floorplan_y: 1536,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_221',
      name: '221',
      doortag: '221',
      floorplan_x: 1892,
      floorplan_y: 1558,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_222',
      name: '222',
      doortag: '222',
      floorplan_x: 1892,
      floorplan_y: 1668,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_223',
      name: '223',
      doortag: '223',
      floorplan_x: 2024,
      floorplan_y: 1708,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_224',
      name: '224',
      doortag: '224',
      floorplan_x: 2160,
      floorplan_y: 1672,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_225',
      name: '225',
      doortag: '225',
      floorplan_x: 2160,
      floorplan_y: 1484,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_228',
      name: '228',
      doortag: '228',
      floorplan_x: 2260,
      floorplan_y: 1576,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_227',
      name: '227',
      doortag: '227',
      floorplan_x: 2300,
      floorplan_y: 1432,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_230',
      name: '230',
      doortag: '230',
      floorplan_x: 2580,
      floorplan_y: 1460,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_231',
      name: '231',
      doortag: '231',
      floorplan_x: 2932,
      floorplan_y: 1352,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_232',
      name: '232',
      doortag: '232',
      floorplan_x: 2732,
      floorplan_y: 1348 ,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_233',
      name: '233',
      doortag: '233',
      floorplan_x: 2632,
      floorplan_y: 1212,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_234',
      name: '234',
      doortag: '234',
      floorplan_x: 2556,
      floorplan_y: 1248,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_235',
      name: '235',
      doortag: '235',
      floorplan_x: 2560,
      floorplan_y: 1300,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_236',
      name: '236',
      doortag: '236',
      floorplan_x: 2492,
      floorplan_y: 1300,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_238',
      name: '238',
      doortag: '238',
      floorplan_x: 2376,
      floorplan_y: 1248,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_239',
      name: '239',
      doortag: '239',
      floorplan_x: 2484,
      floorplan_y: 1244,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_240',
      name: '240',
      doortag: '240',
      floorplan_x: 2268,
      floorplan_y: 1256,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_241',
      name: '241',
      doortag: '241',
      floorplan_x: 2248,
      floorplan_y: 1124,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_242',
      name: '242',
      doortag: '242',
      floorplan_x: 2028,
      floorplan_y: 1168,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_243',
      name: '243',
      doortag: '243',
      floorplan_x: 2152,
      floorplan_y: 1288,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_244',
      name: '244',
      doortag: '244',
      floorplan_x: 2152,
      floorplan_y: 1052,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_245',
      name: '245',
      doortag: '245',
      floorplan_x: 2024,
      floorplan_y: 1004,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_246',
      name: '246',
      doortag: '246',
      floorplan_x: 1892,
      floorplan_y: 1056,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_247',
      name: '247',
      doortag: '247',
      floorplan_x: 1892,
      floorplan_y: 1220,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_250',
      name: '250',
      doortag: '250',
      floorplan_x: 2344,
      floorplan_y: 1056,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_251',
      name: '251',
      doortag: '251',
      floorplan_x: 2344,
      floorplan_y: 954,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_252',
      name: '252',
      doortag: '252',
      floorplan_x: 1628,
      floorplan_y: 1056,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_253',
      name: '253',
      doortag: '253',
      floorplan_x: 1484,
      floorplan_y: 1056,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_254',
      name: 'Jim Storer',
      doortag: '254',
      floorplan_x: 1360,
      floorplan_y: 1056,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_255',
      name: '255',
      doortag: '255',
      floorplan_x: 1388,
      floorplan_y: 1356,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_256',
      name: '256',
      doortag: '256',
      floorplan_x: 1144,
      floorplan_y: 1356,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_257',
      name: 'Harry Mairson',
      doortag: '257',
      floorplan_x: 1228,
      floorplan_y: 1056,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_258',
      name: 'James Pustejovsky',
      doortag: '258',
      floorplan_x: 1092,
      floorplan_y: 1056,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_259',
      name: '259',
      doortag: '259',
      floorplan_x: 960,
      floorplan_y: 1056,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_260',
      name: 'Liuba Shrira',
      doortag: '260',
      floorplan_x: 820,
      floorplan_y: 1056,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_261',
      name: '261',
      doortag: '261',
      floorplan_x: 688,
      floorplan_y: 1160,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_262',
      name: '262',
      doortag: '262',
      floorplan_x: 576,
      floorplan_y: 1008,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_263',
      name: '263',
      doortag: '263',
      floorplan_x: 544,
      floorplan_y: 1252,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_264',
      name: '264',
      doortag: '264',
      floorplan_x: 420,
      floorplan_y: 1088,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_264A',
      name: '264A',
      doortag: '264A',
      floorplan_x: 428,
      floorplan_y: 1192,
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    }
###################### Ted add room below here ####################

###################### End  ###########################################

###################### Wan add room below here ####################

###################### End  ###########################################

###################### Jing add room below here ###################

###################### End  ###########################################

###################### Xi add room below here #####################

###################### End  ###########################################
  ]
end
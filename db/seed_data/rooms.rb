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
    },
    {
      code_name: 'Volen_201',
      name: '201',
      doortag: '201',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_202',
      name: '202',
      doortag: '202',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_203',
      name: '203',
      doortag: '203',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_204',
      name: '204',
      doortag: '204',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_205',
      name: '205',
      doortag: '205',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_206',
      name: '206',
      doortag: '206',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_206A',
      name: '206A',
      doortag: '206A',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_207',
      name: '207',
      doortag: '207',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_209',
      name: '209',
      doortag: '209',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_210',
      name: '210',
      doortag: '210',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_211',
      name: '211',
      doortag: '211',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_212',
      name: '212',
      doortag: '212',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },{
      code_name: 'Volen_213',
      name: '213',
      doortag: '213',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_214',
      name: '214',
      doortag: '214',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_215',
      name: '215',
      doortag: '215',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_216',
      name: '216',
      doortag: '216',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_217',
      name: '217',
      doortag: '217',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_219',
      name: '219',
      doortag: '219',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_220',
      name: '220',
      doortag: '220',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_221',
      name: '221',
      doortag: '221',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_222',
      name: '222',
      doortag: '222',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_223',
      name: '223',
      doortag: '223',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_224',
      name: '224',
      doortag: '224',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_225',
      name: '225',
      doortag: '225',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_228',
      name: '228',
      doortag: '228',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_227',
      name: '227',
      doortag: '227',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_230',
      name: '230',
      doortag: '230',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_231',
      name: '231',
      doortag: '231',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_232',
      name: '232',
      doortag: '232',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_233',
      name: '233',
      doortag: '233',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_234',
      name: '234',
      doortag: '234',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_235',
      name: '235',
      doortag: '235',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_236',
      name: '236',
      doortag: '236',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_238',
      name: '238',
      doortag: '238',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_239',
      name: '239',
      doortag: '239',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_240',
      name: '240',
      doortag: '240',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_241',
      name: '241',
      doortag: '241',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_242',
      name: '242',
      doortag: '242',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_243',
      name: '243',
      doortag: '243',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_244',
      name: '244',
      doortag: '244',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_245',
      name: '245',
      doortag: '245',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_246',
      name: '246',
      doortag: '246',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_247',
      name: '247',
      doortag: '247',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_250',
      name: '250',
      doortag: '250',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_251',
      name: '251',
      doortag: '251',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_252',
      name: '252',
      doortag: '252',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_253',
      name: '253',
      doortag: '253',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_254',
      name: '254',
      doortag: '254',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_255',
      name: '255',
      doortag: '255',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_256',
      name: '256',
      doortag: '256',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_257',
      name: '257',
      doortag: '257',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_258',
      name: '258',
      doortag: '258',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_259',
      name: '259',
      doortag: '259',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_260',
      name: '260',
      doortag: '260',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_261',
      name: '261',
      doortag: '261',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_262',
      name: '262',
      doortag: '262',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_263',
      name: '263',
      doortag: '263',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_264',
      name: '264',
      doortag: '264',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    },
    {
      code_name: 'Volen_264A',
      name: '264A',
      doortag: '264A',
      floor_id: RoomSeeds.f('Volen_2').id,
      building_id: FloorSeeds.b('Volen').id
    }
  ]
end
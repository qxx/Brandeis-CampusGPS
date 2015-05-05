module NicknameSeeds
  def RoomSeeds.b(name)
    Building.find_by!(code_name:name)
  end

  NICKNAMES = [
  	{
  		name:'Carl J. Shapiro Science Center',
  		building_id: RoomSeeds.b('SSC').id
  	},
  	{
  		name:'SSC',
  		building_id: RoomSeeds.b('SSC').id
  	},
    {
      name:'Volen National Center for Complex Systems',
      building_id: RoomSeeds.b('Volen').id
    },
    {
      name:'Volen',
      building_id: RoomSeeds.b('Volen').id
    },
    {
      name:'Computer Science',
      building_id: RoomSeeds.b('Volen').id
    },
    {
      name: 'Heller-Brown Building',
      building_id: RoomSeeds.b('Heller').id
    },
    {
      name: 'Heller',
      building_id: RoomSeeds.b('Heller').id
    },
    {
      name: 'Mandel Center for the Humanities',
      building_id: RoomSeeds.b('Mandel').id
    },
    {
      name: 'Mandel',
      building_id: RoomSeeds.b('Mandel').id
    },
    {
      name: 'Gerstenzang Science Library',
      building_id: RoomSeeds.b('Gzang').id
    },
    {
      name: 'Gzang',
      building_id: RoomSeeds.b('Gzang').id
    },
    {
      name: 'Edison-Lecks Science Building',
      building_id: RoomSeeds.b('Edison').id
    },
        {
      name: 'Edison',
      building_id: RoomSeeds.b('Edison').id
    },
        {
      name: 'Shapiro Campus Center',
      building_id: RoomSeeds.b('SCC').id
    },
        {
      name: 'SCC',
      building_id: RoomSeeds.b('SCC').id
    },
        {
      name: 'Farber Library',
      building_id: RoomSeeds.b('Library').id
    },
        {
      name: 'Library',
      building_id: RoomSeeds.b('Library').id
    },
        {
      name: 'Rabb Graduate Center',
      building_id: RoomSeeds.b('Rabb').id
    },
        {
      name: 'Rabb',
      building_id: RoomSeeds.b('Rabb').id
    },
        {
      name: 'Olin-Sang American Civilization Center',
      building_id: RoomSeeds.b('Olin-Sang').id
    },
        {
      name: 'Olin-Sang',
      building_id: RoomSeeds.b('Olin-Sang').id
    },

        {
      name: 'Shiffman Humanities Center',
      building_id: RoomSeeds.b('Shiffman').id
    },
        {
      name: 'Shiffman',
      building_id: RoomSeeds.b('Shiffman').id
    },
        {
      name: 'Golding Judaica Center',
      building_id: RoomSeeds.b('Golding').id
    },
        {
      name: 'Golding',
      building_id: RoomSeeds.b('Golding').id
    },
        {
      name: 'Lown Center for Judaica Studies',
      building_id: RoomSeeds.b('Lown').id
    },
        {
      name: 'Lown',
      building_id: RoomSeeds.b('Lown').id
    },
        {
      name: 'Kutz Hall',
      building_id: RoomSeeds.b('Kutz').id
    },
        {
      name: 'Kutz',
      building_id: RoomSeeds.b('Kutz').id
    }
  ]

end
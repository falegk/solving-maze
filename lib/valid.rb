module ValidFile
  extend ValidFile

  @basic = %w(start goal coordinates wall)

  def valid_file(data)
    if data['start'] && data['goal'] && data['coordinates']
      true
    else
      p 'There is no start point here. How to begin?' unless data['start']

      p 'There is no exit here. Looks like a prison...' unless data['goal']

      p 'Please, give me dimensions of the maze' unless data['coordinates']

      p 'Looks here to make a correct json file: https://github.com/falegk/solving-maze'
    end

  end

end

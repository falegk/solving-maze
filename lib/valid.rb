module ValidFile
  extend ValidFile

  def valid_file(data)
    if data['start']['x'] && data['start']['y'] && data['goal']['x'] && data['goal']['y'] && data['dimensions']['x'] && data['dimensions']['y']
      true
    else
      puts 'There is no start point here. How to begin?' unless data['start']['x'] && data['start']['y']

      puts 'There is no exit here. Looks like a prison...' unless data['goal']['x'] && data['goal']['y']

      puts 'Please, give me dimensions of the maze' unless data['dimensions']['x'] && data['dimensions']['y']

      puts 'Looks here to make a correct json file: https://github.com/falegk/solving-maze'

    end
  end

end

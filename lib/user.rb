require 'CSV'

class User
  attr_reader :name, :jokes

  def initialize(name)
    @name   = name
    @jokes  = []
  end

  def learn_routine(joke_directory)
    CSV.foreach(joke_directory, headers: true, header_converters: :symbol) do |row|
      # require 'pry'; binding.pry
      @jokes << Joke.load_from_csv(row)
    end
  end
end

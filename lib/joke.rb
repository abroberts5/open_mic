class Joke
  attr_reader :id, :question, :answer

  def initialize(hash)
    @id = hash[:id]
    @question = hash[:question]
    @answer =  hash[:answer]
  end

  def self.load_from_csv(joke_row)
    # require 'pry'; binding.pry
      Joke.new(joke_row)
    end
end

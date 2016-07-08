class Word
  attr_reader(:the_word_itself, :id, :definitions)
  @@words = []
  def initialize(the_word_itself, definition)
    @the_word_itself = the_word_itself
    @definition = definition
    @definitions = []
    @definitions << @definition
    @id = @@words.length + 1
  end

  def save
    @@words << self
  end

  def add_definition(definition)
    @@definitions << definition
  end

end

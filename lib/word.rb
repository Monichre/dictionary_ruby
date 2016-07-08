class Word
  attr_reader(:the_word_itself, :id, :definitions)
  @@words = []
  def initialize(the_word_itself)
    @the_word_itself = the_word_itself
    @definitions = []
    @id = @@words.length + 1
  end

  def save
    @@words << self
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  def add_definition(definition)
    @definitions << definition
  end

  define_singleton_method(:all) do
    @@words
  end

end

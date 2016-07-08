class Definition
  attr_reader(:the_definition_itself)
  @@definitions = []

  def initialize(the_definition_itself)
    @the_definition_itself = the_definition_itself
  end
end

require('rspec')
require('definition')

describe(Definition) do
  describe('#the_definition_itself') do
    it('returns the actual definition content') do
      test_definition = Definition.new("to owe thanks")
      expect(test_definition.the_definition_itself()).to(eq('to owe thanks'))
    end
  end
end

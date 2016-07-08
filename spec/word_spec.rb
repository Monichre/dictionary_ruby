require('rspec')
require('word')

describe(Word) do
  describe('#definitions') do
    it('returns an array of all definitions') do
      test_word = Word.new('beholden', 'owing thanks')
      expect(test_word.definitions()).to(eq(['owing thanks']))
    end
  end
end

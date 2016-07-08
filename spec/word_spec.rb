require('rspec')
require('word')

describe(Word) do
  before() do
    Word.clear()
  end
  describe('#the_word_itself') do
    it('returns the word itself') do
      test_word = Word.new('beholden')
      expect(test_word.the_word_itself()).to(eq('beholden'))
    end
  end

  describe('#definitions') do
    it('returns an array of all definitions') do
      test_word = Word.new('beholden')
      test_word.add_definition('owing thanks')
      expect(test_word.definitions()).to(eq(['owing thanks']))
    end
  end

  describe('#id') do
    it('returns an array of all definitions') do
      test_word = Word.new('perfunctory')
      expect(test_word.id()).to(eq(1))
    end
  end

  describe('.all') do
    it('returns an array of all words') do
      test_word = Word.new('beholden')
      test_word.save()
      test_word2 = Word.new('inane')
      test_word2.save()
      expect(Word.all()).to(eq([test_word, test_word2]))
    end
  end

  describe('#save') do
    it('saves word to an array of all words') do
      test_word = Word.new('beholden')
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved words") do
      Word.new("wash the lion").save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('.find') do
    it('returns a word by its unique id') do
      test_word = Word.new('beholden')
      test_word.save()
      test_word2 = Word.new('soliloquoy')
      test_word2.save()
      expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end
end

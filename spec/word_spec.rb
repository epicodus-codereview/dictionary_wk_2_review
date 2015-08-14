require('rspec')
require('word')

describe('Word') do
  describe('.all') do
    it('returns all of the words in @@words array') do
      expect(Word.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('saves the word into the @@words array') do
      test_word = Word.new('car')
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end
  describe('.clear') do
    it('clears the @@words array of all words') do
      expect(Word.clear).to(eq([]))
    end
  end
  describe('#id') do
    it('returns a unique id for each word in @@words') do
      test_word = Word.new('Table')
      test_word.save()
      expect(test_word.id()).to(eq(1))
    end
  end
  describe('.find') do
    it('finds the word by its id') do
      test_word2 = Word.new('Chair')
      test_word2.save()
      expect(Word.find(test_word2.id())).to(eq(test_word2))
    end
  end
  describe('#add_definition') do
    it('adds a definition to the @defnitions array') do
      Word.clear()
      test_word = Word.new('tent')
      test_word.save()
      test_definition = Definition.new('A tent is an portable structure.', 'noun')
      test_definition.save()
      test_word.add_definition(test_definition)
      expect(test_word.definitions()).to(eq([test_definition]))
    end
  end
  describe('#definitions') do
    it('returns the definition') do
      Word.clear()
      test_word = Word.new('tent')
      test_word.save()
      test_definition = Definition.new('A tent is an portable structure.', 'noun')
      test_definition.save()
      test_word.add_definition(test_definition)
      expect(test_word.definitions()).to(eq([test_definition]))
    end
  end
  describe('#word') do
    it('returns the word') do
      test_word3 = Word.new('chair')
      test_word3.save()
      expect(test_word3.word()).to(eq('chair'))
    end
  end
end

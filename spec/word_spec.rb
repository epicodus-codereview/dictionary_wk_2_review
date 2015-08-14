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
end

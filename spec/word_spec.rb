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
      test_word = Word.new('car', 'noun')
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
      test_word = Word.new('Table', 'noun')
      test_word.save()
      expect(test_word.id()).to(eq(1))
    end
  end
  describe('.find') do
    it('finds the word by its id') do
      test_word2 = Word.new('Chair', 'noun')
      test_word2.save()
      expect(Word.find(test_word2.id())).to(eq(test_word2))
    end
  end
  describe('#part') do
    it('returns what part of the word is. e.g subject, verb, noun etc.') do
    Word.clear()
    test_word = Word.new('table', 'noun')
    test_word.save()
    expect(test_word.part()).to(eq('noun'))
    end
  end
end

require('rspec')
require('word')

describe('Word') do
  describe('.all') do
    it('returns all of the words in @@words array') do
      # test_word = Word.new('car')
      # test_word.save()
      expect(Word.all()).to(eq([]))
    end

  end
end

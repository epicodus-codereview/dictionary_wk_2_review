require('rspec')
require('definition')

describe('definition') do
  describe('.all') do
    it('returns all of the definitions in the @@definitions array') do
      expect(Definition.all()).to(eq([]))
    end
  end
end

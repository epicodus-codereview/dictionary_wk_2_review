require('rspec')
require('definition')

describe('definition') do
  describe('.all') do
    it('returns all of the definitions in the @@definitions array') do
      expect(Definition.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('saves the definition into the @@definitions array') do
      test_definition = Definition.new('A tent is a portable structure.')
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end
  # describe('.clear') do
  #   it('clears the @@definitions array of all definitions') do
  #     expect(Definition.clear).to(eq([]))
  #   end
  # end
  # describe('#id') do
  #   it('returns a unique id for each definition in @@definitions') do
  #     test_definition = Definition.new('A tent is a portable structure.')
  #     test_definition.save()
  #     expect(test_definition.id()).to(eq(1))
  #   end
  # end
  # describe('.find') do
  #   it('finds the definition by its id') do
  #     test_definition2 = Definition.new('A tent is a portable structure.')
  #     test_definition2.save()
  #     expect(Definition.find(test_definition2.id())).to(eq(test_definition2))
  #   end
  # end
end

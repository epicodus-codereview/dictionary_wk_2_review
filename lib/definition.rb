class Definition
  @@definitions = []
  define_method(:initialize) do |definition|
    @definition = definition
    @id = @@definitions.length().+(1)
  end
  define_singleton_method(:all) do
    @@definitions
  end
  # define_method(:save) do
  #   @@definitions.push(self)
  # end
  # define_singleton_method(:clear) do
  #   @@definitions = []
  # end
  # define_method(:id) do
  #   @id
  # end
  # define_singleton_method(:find) do |ident|
  #   found_definition = nil
  #   @@definitions.each() do |definition|
  #     if definition.id.eql?(ident)
  #       found_definition = definition
  #     end
  #   end
  #   found_definition
  # end
end

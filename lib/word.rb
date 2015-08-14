class Word
  @@words = []
  define_method(:initialize) do |type|
    @type = type
  end

  define_singleton_method(:all) do
    @@words
  end
end

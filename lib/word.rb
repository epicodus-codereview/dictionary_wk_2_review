class Word
  @@words = []
  define_method(:initialize) do |word, part|
    @word = word
    @part = part
    @id = @@words.length().+(1)
    @definitions = []
  end
  define_singleton_method(:all) do
    @@words
  end
  define_method(:save) do
    @@words.push(self)
  end
  define_singleton_method(:clear) do
    @@words = []
  end
  define_method(:id) do
    @id
  end
  define_singleton_method(:find) do |ident|
    found_word = nil
    @@words.each() do |word|
      if word.id.eql?(ident)
        found_word = word
      end
    end
    found_word
  end
  define_method(:part) do
    @part
  end
  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end
  define_method(:definitions) do
    @definitions
  end
end

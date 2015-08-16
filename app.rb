require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/definition')
require('./lib/word')

get('/') do
  @words = Word.all()
  erb(:index)
end

post('/') do
  word = params.fetch('word_input')
  new_word = Word.new(word)
  new_word.save()
  @words = Word.all()
  erb(:index)
end

get('/word/:id') do

  # @words = Word.all() # word_page.erb does not need the list of all words
  @word = Word.find(params.fetch('id').to_i()) # word_page.erb DOES need the actual word object itself since this is the page to show details on that word and that word's definitions
  @definitions = @word.definitions() # get list of definitions for this word only
  # @definition = Definition.find(params.fetch('id').to_i())
  erb(:word_page)
end

post('/definitions') do
  definition = params.fetch('definition_input')
  part = params.fetch('part_input')
  new_definition = Definition.new(definition, part)
  # new_definition.save # for this exercise definitions only need to be added to words, not saved on their own
  @word = Word.find(params.fetch('word_id').to_i()) # find the right word to add the definition to (based on URL)
  @word.add_definition(new_definition) # add the definition object to the word object
  erb(:success)
end

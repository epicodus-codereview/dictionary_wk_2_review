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

  @words = Word.all()
  @definitions = Definition.all
  @definition = Definition.find(params.fetch('id').to_i())
  erb(:word_page)
end

post('/word/:id') do
  definition = params.fetch('definition_input')
  part = params.fetch('part_input')
  new_definition = Definition.new(definition, part)
  new_definition.save
  @definitions = Definition.all()
  erb(:success)
end

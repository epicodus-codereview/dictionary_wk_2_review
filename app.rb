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

get('/success') do
  erb(:success)
end

get('/word') do
  @word = Word.all()
  @definition = Definition.all()
  erb(:word_page)
end

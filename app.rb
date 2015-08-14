require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/definition')
require('./lib/word')

get('/') do
  @words = Word.all()
  erb(:index)
end

get('/success') do
  erb(:success)
end

get('/word') do
  erb(:)
end

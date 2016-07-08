require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/definition')
require('./lib/word')


get('/') do
  @words = Word.all()
  erb(:index)
end

post('/words') do
  the_word_itself = params.fetch('word')
  the_definition_itself = params.fetch('definition')
  definition = Definition.new(the_definition_itself)
  @word = Word.new(the_word_itself)
  @word.add_definition(definition)
  @word.save()
  erb(:success)
end

get('/words/:id') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word)
end

post('/words/:id/new') do
  @word = Word.find(params.fetch('id').to_i())
  the_definition_itself = params.fetch('new_definition')
  definition = Definition.new(the_definition_itself)
  @word.add_definition(definition)
  erb(:word)
end

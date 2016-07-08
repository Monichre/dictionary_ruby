require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/rectangle')


get('/') do
  erb(:index)
end

get('/words') do
  erb(:words)
end

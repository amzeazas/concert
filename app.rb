require('bundler/setup')
require('pry')
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

get('/band/new') do
  erb(:band_form)
end

post('/bands') do
  @band = Band.create({:name => params.fetch("name")})
  redirect('/bands')
end

get('/bands') do
  @bands = Band.all()
  erb(:bands)
end

get('/band/:id') do
  @band = Band.find(params.fetch("id").to_i())
  erb(:band)
end

delete('/band/:id') do
  @band = Band.find(params.fetch("id").to_i())
  @band.delete()
  redirect('/bands')
end

get('/venue/new') do
  #add info for adding new venue page
end

get('/venues') do
  #add info for venues page
end

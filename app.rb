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

get('/band/:id/edit') do
  @band = Band.find(params.fetch("id").to_i())
  @venues = Venue.all()
  erb(:band_edit)
end

patch('/band/:id') do
  @band = Band.find(params.fetch("id").to_i())
  @band.update({:name => params.fetch("name")})
  redirect("/band/#{@band.id()}")
end

patch('/band/:id/venues') do
  band_id = params.fetch("id").to_i()
  @band = Band.find(band_id)
  venue_ids = params.fetch("venue_ids")
  @band.update({:venue_ids => venue_ids})
  @venues = Venue.all()
  redirect("/band/#{@band.id()}")
end

get('/venue/new') do
  erb(:venue_form)
end

post('/venues') do
  @venue = Venue.create({:name => params.fetch("name")})
  redirect('/venues')
end

get('/venues') do
  @venues = Venue.all()
  erb(:venues)
end

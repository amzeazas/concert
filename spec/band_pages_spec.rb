require('capybara/rspec')
require('./app')
require('spec_helper')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("adding a band", {:type => :feature}) do
  it("allows a user to add a new band") do
    visit("/")
    click_link("ADD A NEW BAND")
    fill_in("name", :with => "Bon jovi")
    click_button("Add Band")
    expect(page).to have_content("Bon Jovi")
  end
end

describe("deleting a band", {:type => :feature}) do
  it("allows a user to delete a band") do
    visit("/")
    test_band = Band.create({:name => "Blue Man Group"})
    click_link("SEE ALL BANDS")
    click_link("Blue Man Group")
    click_button("DELETE BAND")
    expect(page).to have_content("Bands")
  end
end

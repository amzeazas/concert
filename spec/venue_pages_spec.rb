require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("adding a venue", {:type => :feature}) do
  it("allows a user to add a new venue") do
    visit("/")
    click_link("ADD A NEW VENUE")
    fill_in("name", :with => "Gorge Amphitheater")
    click_button("Add Venue")
    expect(page).to have_content("Gorge Amphitheater")
  end
end

require('capybara/rspec')
require('./app')
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

require('spec_helper')

describe(Venue) do
  it { should have_and_belong_to_many(:bands) }
  it { should validate_presence_of(:name) }

  it('capitalizes the first letter of each word in the name') do
    test_venue = Venue.create({:name => "gorge amphitheater"})
    expect(test_venue.name()).to(eq("Gorge Amphitheater"))
  end
end

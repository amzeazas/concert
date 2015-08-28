require('spec_helper')

describe(Band) do
  it { should have_and_belong_to_many(:venues) }
  it { should validate_presence_of(:name) }

  it('capitalizes the first letter of each word in the name') do
    test_band = Band.create({:name => "bon jovi"})
    expect(test_band.name()).to(eq("Bon Jovi"))
  end
end

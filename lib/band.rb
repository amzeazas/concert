class Band < ActiveRecord::Base
  has_and_belongs_to_many(:venues)
  validates_presence_of(:name)
  before_save(:capitalize_name)

private

  define_method(:capitalize_name) do
    self.name=(name().split.map {|i| i.capitalize }.join(' '))
  end
end

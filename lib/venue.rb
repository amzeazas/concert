class Venue < ActiveRecord::Base
  has_and_belongs_to_many(:bands)
  validates_presence_of(:name)
  before_save(:capitalize_name)

private

  define_method(:capitalize_name) do
    self.name=(name().split.map {|i| i.capitalize }.join(' '))
  end
end

class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :name, length: {minimum: 3}, uniqueness: {message: "Name already exists"}
end
#
# RSpec::Matchers.define :exist_in_database do
#   match do /actual/
#   actual.class.exists?(actual.id)
#   restaurant = Restaurant.create(name: 'hey')
#   end
# end
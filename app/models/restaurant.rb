class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :name, length: {minimum: 3}, uniqueness: {message: "Name already exists"}
  validates :name, uniqueness: true
end

require 'spec_helper'

describe Restaurant, type: :model do
  it { is_expected.to have_many :reviews }

  it 'deletes reviews if restaurant is deleted' do
    restaurant = Restaurant.create(name: "KFC", rating: 3)
    review = restaurant.reviews.create(thoughts: "Good", rating: 3)
    restaurant.destroy
    expect(restaurant.reviews.count).to eq 0
  end
end

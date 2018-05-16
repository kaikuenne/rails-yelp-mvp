require 'faker'

100.times do
  restaurant = Restaurant.create(
    name: Faker::Hipster.words(1)[0],
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].shuffle.first,
    )

  10.times do
  Review.create(
    content: Faker::Lovecraft.paragraph,
    rating: [0, 1, 2, 3, 4, 5].shuffle.first,
    restaurant_id: restaurant.id,
    )
  end
end

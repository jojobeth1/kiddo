# USERS
# get rid of existing data
User.destroy_all
user_data = []

3.times do
  user_data <<{
    first: FFaker::Name.first_name,
    last: FFaker::Name.last_name,
    email: FFaker::Internet.safe_email,
    username: FFaker::Internet.user_name,
    password_digest: FFaker::Internet.password,
    bio: FFaker::HipsterIpsum.paragraph,
    num_of_kids: rand(1..5)
  }
end

users = User.create(user_data)
puts "Seeded #{users.count} users"

# CITY data
City.destroy_all
city_data = [
  {:name=>"San Francisco"},
  {:name=>"Hayward"},
  {:name=>"Oakland"},
  {:name=>"San Jose"}
]

cities = City.create(city_data)
puts "Seeded #{cities.count} cities"

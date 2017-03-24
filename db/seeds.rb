10.times do 
  User.create({ username: Faker::Name.first_name, password_digest: "password", user_first_name: Faker::Name.first_name, user_last_name: Faker::Name.last_name, user_age: 27, user_role: "musician", user_city: Faker::Address.city, user_zip_code: Faker::Address.zip })
end 

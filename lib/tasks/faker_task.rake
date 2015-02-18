task create_graduates: :environment do
  puts "HEllo"
  10.times do
    Graduate.create!({
      first_name: "#{Faker::Name.first_name}",
      last_name: "#{Faker::Name.last_name}",
      current_city: Faker::Address.city,
      current_state: Faker::Address.state,
      grad_city: Faker::Address.city,
      grad_state: Faker::Address.state,
      grad_date: Faker::Date.backward(150),
      email: Faker::Internet.email,
      photo: [
          "http://placekitten.com/100/100",
          "http://fillmurray.com/100/100",
          "http://placecage.com/100/100",
          "http://stevensegallery.com/100/100"
        ].sample,
      bio: Faker::Lorem.paragraph(10)
    })
  end
end
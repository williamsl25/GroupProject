task create_employers: :environment do
  puts "HEllo"
  10.times do
    Employer.create!({
      name: Faker::Company.name,
      photo: Faker::Company.logo,
      bio: Faker::Lorem.paragraph(10),
      industry: Faker::Company.catch_phrase,
      size: Faker::Number.number(4),
      date_founded: Faker::Date.backward(150),
      email: Faker::Internet.email
    })
  end
end
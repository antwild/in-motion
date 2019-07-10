puts "Cleaning database..."
Blog.destroy_all
puts "Blogs empty"
Client.destroy_all
puts "Clients empty"
Consultation.destroy_all
puts "Consultations empty"
Enquiry.destroy_all
puts "Enquiries empty"
Package.destroy_all
puts "Packages empty"
Preconsultation.destroy_all
puts "Preconsultations empty"
User.destroy_all
puts "Users empty"
puts "Database empty!"

puts "Creating Clients..."

clients = [
  {
    first_name: "Ziyad",
    last_name: "Hareshe",
    email: "zi@gmail.com",
    phone: "12345"
  },
  {
    first_name: "Amy",
    last_name: "Fisher",
    email: "amz@gmail.com",
    phone: "67890"
  }
]


Client.create!(clients)
puts "Clients created!"

puts "Creating Preconsultations..."

preconsultations = [
  {
    client_id: 1,
    age: 31,
    sex: "Male",
    height: 180,
    weight: 80,
    about: "Work long hours. Travel a lot.",
    goal: "Lose body fat",
    expand: "Want to lose 10kg in 3 months",
    meals_per_day: 3,
    similar_meals: "Similar",
    breakfast: "Eggs and toast",
    snack_one: "",
    lunch: "Sandwich",
    snack_two: "Crisps",
    dinner: "Pizza",
    snack_three: "Ice cream",
    eating_to_achieve: "Enjoying food",
    supplements: false,
    supp_detail: "",
    supplements_year: "",
    support: "Keep me on track",
    budget: "Over £500",
    diet: "Will eat anything",
    three_months: "Walk up stairs without getting out of breath",
    six_months: "Can run 10k",
    twelve_months: "I'm at 10% body fat",
    training: "Tuesday - run, 30 mins, 5k",
    female: "",
    previous: "No",
    bathroom: true,
    kitchen: false,
    based: "London",
    remote: true,
    found: "Google",
    phrase: "Nutrition london",
    testimonial: true
  },
  {
    client_id: 2,
    age: 62,
    sex: "Female",
    height: 160,
    weight: 52,
    about: "Retired.",
    goal: "Get fitter",
    expand: "Want to run a marathon",
    meals_per_day: 3,
    similar_meals: "Varied",
    breakfast: "",
    snack_one: "Celery",
    lunch: "Pasta",
    snack_two: "",
    dinner: "Curry",
    snack_three: "Bread and dips",
    eating_to_achieve: "Stay energised",
    supplements: false,
    supp_detail: "",
    supplements_year: "Vitamin D tablets",
    support: "Help me with food choices",
    budget: "Less than £100",
    diet: "I'm a vegetarian",
    three_months: "Can run 20k",
    six_months: "Still training",
    twelve_months: "To have at least once run 40k",
    training: "Tuesday - run, 30 mins, 5k. Thursday - run, 1hr 15mins, 10k.",
    female: "postmenopausal",
    previous: "Yes, from my GP",
    bathroom: true,
    kitchen: true,
    based: "Guildford",
    remote: true,
    found: "GP",
    phrase: "",
    testimonial: true
  }
]

Preconsultation.create!(preconsultations)
puts "Preconsultations created!"

puts "Seed complete!"

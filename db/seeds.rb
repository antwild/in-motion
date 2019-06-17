puts "Cleaning database..."
User.destroy_all
Blog.destroy_all
Consultation.destroy_all
Service.destroy_all
puts "Database empty!"

puts "Creating services..."

types = [
  {service_type: "online", image: "online.jpg"},
  {service_type: "in person", image: "in_person.jpeg"},
  {service_type: "group", image: "group.jpg"}
]

Service.create!(types)

puts "Services 'online', 'in person' and 'group' created!"
puts "Creating Users..."

users = [
  {
    first_name: "Ash",
    last_name: "Wills",
    email: "Ash@gmail.com",
    phone: "07988 276 273",
    admin: true
  },
  {
    first_name: "Ant",
    last_name: "Wild",
    email: "ant@gmail.com",
    phone: "07921 927 384",
  }
]

User.create!(users)

puts "Users created!"

puts "Creating consultations..."

# consultations = [
#   {
#     date: '2019-06-29',
#     time: '2019-06-29-18-20-00',
#     users_id: User.find(1)
#     services_id: Service.find(1)
#   },
#   {
#     date: '2019-08-05',
#     time: '2019-08-05-10-45-00',
#     users_id: User.find(2)
#     services_id: Service.find(3)
#   }
# ]

# Consultation.create!(consultations)

puts "Consultations created!"

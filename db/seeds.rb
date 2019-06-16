puts "Cleaning database..."
User.destroy_all
Blog.destroy_all
Consultation.destroy_all
Service.destroy_all
puts "Database empty!"

puts "Creating services"

Service.create!(types)

types = [
  {type: "online"},
  {type: "in person"},
  {type: "group"}
]

puts "Services 'online', 'in person' and 'group' created!"

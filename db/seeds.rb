puts "Cleaning database..."
Blog.destroy_all
Preconsultation.destroy_all
Client.destroy_all
User.destroy_all
puts "Database empty!"

puts "Creating Users..."

users = [
  {
    first_name: "Ash",
    last_name: "Wills"
  },
  {
    first_name: "Ant",
    last_name: "Wild"
  }
]

User.create!(users)

puts "Users created!"

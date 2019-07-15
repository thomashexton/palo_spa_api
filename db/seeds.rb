puts "Destroying database..."
User.destroy_all
puts "Successfully destroyed..."

puts "Seeding databse..."
u1 = User.create :first_name => "Thomas", :last_name => "Hexton"
u2 = User.create :first_name => "Caitlin", :last_name => "Cody"
puts "Successfully seeded..."

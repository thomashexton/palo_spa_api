puts "Destroying database..."
User.destroy_all
puts "Successfully destroyed..."

puts "Seeding databse..."
u1 = User.create :first_name => "Ann", :last_name => "Other", :consecutive_zeroes => 2
u2 = User.create :first_name => "Thomas", :last_name => "Hexton", :consecutive_zeroes => 6
u3 = User.create :first_name => "Caitlin", :last_name => "Cody", :consecutive_zeroes => 3
puts "Successfully seeded..."

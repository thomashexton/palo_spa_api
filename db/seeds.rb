puts "Destroying database..."
User.destroy_all
puts "Successfully destroyed..."

puts "Seeding databse..."
u1 = User.create :first_name => "Ann", :last_name => "Other", :ascii_total => 831, :binary_conversion => 1100111111, :consecutive_zeroes => 2
u2 = User.create :first_name => "Thomas", :last_name => "Hexton", :ascii_total => 1282, :binary_conversion => 10100000010, :consecutive_zeroes => 6
u3 = User.create :first_name => "Caitlin", :last_name => "Cody", :ascii_total => 1139, :binary_conversion => 10001110011, :consecutive_zeroes => 3
puts "Successfully seeded..."

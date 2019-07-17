class CreateUsers < ActiveRecord::Migration[5.2]
	def change
		create_table :users do |t|
			t.text :first_name
			t.text :last_name
			t.integer :ascii_total
			t.bigint :binary_conversion
			t.integer :consecutive_zeroes

			t.timestamps
		end
	end
end

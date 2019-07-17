# == Schema Information
#
# Table name: users
#
#  id                 :bigint(8)        not null, primary key
#  first_name         :text
#  last_name          :text
#  consecutive_zeroes :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  ascii_total        :integer
#  binary_conversion  :bigint(8)
#

class User < ApplicationRecord

	def self.ascii_totaller first_name, last_name
		full_name = "#{first_name} #{last_name}"
		ascii_total = 0

		# split the full name, then iterate over it
		full_name.split('').each do |char|
			# convert each char and add it's ascii equivalent to the total
			ascii_total += char.ord
		end

		# # visual check to see if output is correct
		# puts "\n*****\nVisual Check\n__________\n#{ascii_total.to_s(2)}\n*****\n\n"
		return ascii_total
	end

	def self.binary_converter string
		return string.to_s(2)
	end

	def self.consecutive_zeroes string
		# if the input binary number doens't include 0, it must occur 0 times...
		if string.include?('0') == false
			puts "Doesn't include any consecutive 0s."
			return 0
		end

		# split the total at each of the 1s
		zero_chunks_array = string.split('1')
		# filter out any of the items in the array that aren't a chunk of 0s
		zeroes_array = zero_chunks_array.select do |elem|
			elem.include?('0')
		end

		# setup max length of zeroes
		consecutive_zeroes = 0
		# iterate over the array, comparing the length of each 'chunk' of zeroes to the previous largest
		# replace it if the length is greater, thus the new longest length of zeroes
		zeroes_array.each do |elem|
			if elem.length > consecutive_zeroes
				consecutive_zeroes = elem.length
			end
		end

		return consecutive_zeroes
	end

end

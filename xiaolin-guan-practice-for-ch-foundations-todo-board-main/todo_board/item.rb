class Item
	attr_accessor :title, :deadline, :description

	def self.valid_date?(date_string)
		return false if date_string[4] != "-" || date_string[7] != "-"
		year = date_string[0..3].to_i	# YYYY
		month = date_string[5..6].to_i	# MM
		day = date_string[-2..-1].to_i	# DD

		year = year <= 2023
		month = month >= 1 && month <= 12
		day = day >= 1 && day <= 31

		year && month && day
	end

	def initialize(title, deadline, description)
		@title = title
		if Item.valid_date?(deadline)
			@deadline = deadline
		else
			raise "Invalid deadline"
		end
		@description = description
	end
end
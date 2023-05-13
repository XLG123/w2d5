class Item
	attr_accessor :title, :description
	attr_reader :deadline, :done

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
		@done = false
	end

	def deadline=(new_deadline)
		if Item.valid_date?(new_deadline)
			@deadline = new_deadline
		else
			raise "Invalid deadline"
		end
	end

	def toggle
		@done = !@done
	end
end
require_relative "item"

class List
	attr_accessor :label

	def initialize(label)
		@label = label
		@items = []
	end

	def add_item(title, deadline, description=nil)
		if Item.valid_date?(deadline)
			new_item = Item.new(title, deadline, description) 
			@items << new_item
			return true
		end
		false
	end

	def size
		@items.length
	end

	def valid_index?(index)
		index >= 0 && index < @items.length
	end

	def swap(index_1, index_2)
		if valid_index?(index_1) && valid_index?(index_2)
			@items[index_1], @items[index_2] = @items[index_2], @items[index_1]
			return true
		end
		false
	end

	def [](index)
		item = valid_index?(index) ? @items[index] : nil
	end

	def priority
		@items[0]
	end

	def print
		puts "--------------------------------------------"
		puts "\t\t\t\t#{self.label}\t\t"
		puts "--------------------------------------------"
		puts "Index\t| Item\t\t\t\t\t| Deadline"
		puts "--------------------------------------------"
		@items.each_with_index do |item, idx|
			puts "#{idx}\t\t| #{item.title}\t\t\t\t| #{item.deadline}"
		end
		puts "--------------------------------------------"
	end
	
	def print_full_item(index)
		if valid_index?(index)
			puts "--------------------------------------------"
			item = self[index]
			puts "#{item.title} \t\t\t\t\t\t\t #{item.deadline}"
			puts "#{item.description}"
			puts "--------------------------------------------"
		end
	end
	
	def print_priority
		puts "--------------------------------------------"
		puts "\t\t\t\tPRIORITY\t\t"
		puts "--------------------------------------------"
		item = self.priority
		puts "#{item.title} \t\t\t\t\t\t\t #{item.deadline}"
		puts "#{item.description}"
		puts "--------------------------------------------"
	end

	def up(index, amount = 1)
		if valid_index?(index)
			count = 0
			while count < amount
				if index != 0
					self.swap(index, index - 1)
					count += 1
					index -= 1
				elsif index == 0
					break
				end
			end
			return true
		end
		false
	end
	
	def down(index, amount = 1)
		if valid_index?(index)
			count = 0
			while count < amount
				if index != self.size - 1
					self.swap(index, index + 1)
					count += 1
					index += 1
				elsif index == self.size - 1
					break
				end
			end
			return true
		end
		false
	end

	def sort_by_date!
		@items.sort_by! { |item| item.deadline }
	end
end
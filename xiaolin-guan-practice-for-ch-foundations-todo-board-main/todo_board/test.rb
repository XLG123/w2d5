require_relative "item"
require_relative "list"
require_relative "todo_board"

puts "Phase 1"
puts "Item:"
puts "::valid_date?"
p Item.valid_date?('2019-10-25') # true
p Item.valid_date?('1912-06-23') # true
p Item.valid_date?('2018-13-20') # false
p Item.valid_date?('2018-12-32') # false
p Item.valid_date?('10-25-2019') # false
puts

puts "#initialize"
item_1 = Item.new('Fix login page', '2019-10-25', 'The page loads too slow.')

item_2 = Item.new(
    'Buy Cheese',
    '2019-10-21',
    'You require American, Swiss, Feta, and Mozzarella cheese for the Happy hour!'
)

p item_1, item_2
puts

puts "Original Item 1:"
p item_1.title
p item_1.deadline
p item_1.description
puts

puts "Modified Item 1:"
item_1.title = "Fix profile page"
item_1.deadline = "2023-04-12"
p item_1.title
p item_1.deadline
p item_1.description
puts
# Item.new(
#     'Fix checkout page',
#     '10-25-2019',
#     'The font is too small.'
# ) # raises error due to invalid date

list_1 = List.new("List_1")
p list_1.add_item(item_1.title, item_1.deadline, item_1.description)
p list_1.add_item(item_2.title, item_2.deadline, item_2.description)
p list_1.add_item("Check HW", "22031e-23", "")

p list_1
puts

puts "List 1 has #{list_1.size} items"
puts

puts "valid_index?"
puts list_1.valid_index?(2) # => false
puts list_1.valid_index?(1) # => true
puts list_1.valid_index?(3) # => false
puts list_1.valid_index?(0) # => true
puts

puts "swap"
puts list_1.swap(0, 1) # => true
puts list_1.swap(2, 3) # => false
puts

puts "List 1 after swapping item 1 and item 2:"
p list_1
puts

list_1.add_item("item 3", "2023-02-12")
puts "List 1 with three items"
p list_1
puts

puts "#[](index)"
p list_1[3]
puts
p list_1[1]
puts

puts "#priority"
p list_1.priority
puts

list_2 = List.new("List 2")

list_2.add_item("item 1", "2023-01-19", "Pencil")
list_2.add_item("item 2", "2023-02-19", "Notebook")
list_2.add_item("item 3", "2023-03-19", "Orange")

puts "print"
list_2.print
puts
puts

puts "print_full_item"
list_2.print_full_item(1)
puts
puts

puts "print_priority"
list_2.print_priority
puts
puts

puts "up"
puts "move up item 2: #{list_2.up(1)}"
list_2.print
puts

puts "move up item 3: #{list_2.up(2)}"
list_2.print
puts

puts "move up item 1: #{list_2.up(2, 2)}"
list_2.print
puts

puts "move up item 3: #{list_2.up(2, 7)}"
list_2.print
puts

puts "move up item 4: #{list_2.up(4)}"
list_2.print
puts
puts

puts "down"
puts "move down item 1: #{list_2.down(1)}"
list_2.print
puts

puts "move down item 3: #{list_2.down(0, 2)}"
list_2.print
puts

puts "move down item 2: #{list_2.down(0, 4)}"
list_2.print
puts

puts "move down item 3: #{list_2.down(1)}"
list_2.print
puts

puts "move down item 1: #{list_2.down(0, 2)}"
list_2.print
puts
puts

puts "sort_by_date!"
list_2.sort_by_date!
list_2.print
puts

puts "Add more items:"
list_2.add_item("item 4", "2019-11-23")
list_2.add_item("item 5", "2017-11-23")
list_2.add_item("item 6", "2023-02-11")
list_2.add_item("item 7", "2022-06-11")
list_2.add_item("item 8", "2022-07-11")
list_2.print

puts "sort by date again!"
list_2.sort_by_date!
list_2.print
puts

puts "Todo Board:"
puts "Todo Board 1"
board_1 = TodoBoard.new("board 1")
p board_1
puts

puts "get_command"
# mktodo
board_1.get_command # add item to todo board 1
board_1.get_command # add item to todo board 1
board_1.get_command # add item to todo board 1
board_1.get_command # add item to todo board 1
puts 
p board_1
puts

# up
board_1.get_command # move item 2 to the top, up 1
board_1.get_command # print
puts

board_1.get_command # move item 4 to the top, up 3, 4 
board_1.get_command # print
puts

board_1.get_command # move item 3 to the top, up 3 9
board_1.get_command # print
puts
# order should be: item3, item4, item2, item1

# down
board_1.get_command # move item 3 to the bottom, down 1 8
board_1.get_command # print
puts

# swap
board_1.get_command # swap index 1 and index 2
board_1.get_command # print
puts

board_1.get_command # priority, item4 should be at the top.
board_1.get_command # print
puts

board_1.get_command # print
puts
# order should be: item4, item1, item2, item3

board_1.get_command # quit
board_1.get_command # should not execute
board_1.get_command # should not execute
# p board_1
# puts

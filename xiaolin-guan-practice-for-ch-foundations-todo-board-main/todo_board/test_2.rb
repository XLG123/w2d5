require_relative "item"
require_relative "list"
require_relative "todo_board"

puts "Phase 2"
item_1 = Item.new("item1", "2021-12-27", "a pencil")
item_2 = Item.new("item2", "2021-10-17", "a pen")
item_3 = Item.new("item3", "2008-07-06", "a diary")
p item_1, item_2, item_3
puts

5.times {
    item_1.toggle
    p item_1
}
puts

list_1 = List.new("LIST 1")
list_1.add_item(item_1.title, item_1.deadline, item_1.description)
list_1.add_item(item_2.title, item_2.deadline, item_2.description)
list_1.add_item(item_3.title, item_3.deadline, item_3.description)
p list_1
list_1.print
puts
puts

list_1.swap(1, 2)
list_1.print
puts
puts

list_1.print_full_item(1)
puts
puts
list_1.print_priority

board_1 = TodoBoard.new("BOARD 1")
board_1.get_command # add item 1
board_1.get_command # add item 2
board_1.get_command # add item 3
board_1.get_command # add item 4
board_1.get_command # add item 5
board_1.get_command # add item 6
board_1.get_command # add item 7
board_1.get_command # add item 8
puts

board_1.get_command # print
puts
puts

board_1.get_command # toggle index 2
board_1.get_command # print
puts
puts

board_1.get_command # remove first item from the list
board_1.get_command # print
puts
puts

board_1.get_command # remove last item from the list
board_1.get_command # print
puts
puts

board_1.get_command # remove middle item from the list
board_1.get_command # print
puts
puts

board_1.get_command # remove middle item from the list
board_1.get_command # print
puts
puts

board_1.get_command # toggle index 3
board_1.get_command # print
puts
puts

board_1.get_command # toggle index 2
board_1.get_command # print
puts
puts

board_1.get_command # toggle index 6
board_1.get_command # print
puts
puts

board_1.get_command # toggle index 2
board_1.get_command # print
puts
puts

board_1.get_command # purge
board_1.get_command # print
puts

board_2 = TodoBoard.new("Board 2")
board_2.get_command # add item 1 
board_2.get_command # add item 2
board_2.get_command # add item 3
board_2.get_command # add item 4
board_2.get_command # add item 5
board_2.get_command # add item 6
board_2.get_command # add item 7
board_2.get_command # add item 8
puts

board_2.get_command # print
puts
puts

board_2.get_command # toggle index 1
board_2.get_command # toggle index 2
board_2.get_command # toggle index 3
board_2.get_command # toggle index 4
board_2.get_command # toggle index 6
board_2.get_command # toggle index 7
puts

board_2.get_command # purge
board_2.get_command # print
puts
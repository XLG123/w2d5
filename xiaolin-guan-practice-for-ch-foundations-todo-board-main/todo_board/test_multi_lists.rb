require_relative "item"
require_relative "list"
require_relative "todo_board"

puts "Support for multi-lists"
board_1 = TodoBoard.new
p board_1
puts

board_1.get_command # mklist <List1>
board_1.get_command # mklist <List2>
board_1.get_command # mklist <List3>
board_1.get_command # mklist <List4>

board_1.get_command # ls
puts
puts

board_1.get_command # showall
puts
puts

board_1.get_command # mktodo List1 item1 2021-02-12(add item1 to List1)
board_1.get_command # add item2 to List1
board_1.get_command # add item3 to List1
board_1.get_command # add item4 to List1
board_1.get_command # add item5 to List1
puts

board_1.get_command # add item1 to List2
board_1.get_command # add item2 to List2
board_1.get_command # add item3 to List2
board_1.get_command # add item4 to List2
board_1.get_command # add item5 to List2
puts

board_1.get_command # add item1 to List3
board_1.get_command # add item2 to List3
board_1.get_command # add item3 to List3
board_1.get_command # add item4 to List3
board_1.get_command # add item5 to List3
puts

board_1.get_command # add item1 to List4
board_1.get_command # add item2 to List4
board_1.get_command # add item3 to List4
board_1.get_command # add item4 to List4
board_1.get_command # add item5 to List4
puts

board_1.get_command # ls
puts
puts

board_1.get_command # showall
puts
puts

board_1.get_command # toggle List1 item2
board_1.get_command # toggle List1 item3

board_1.get_command # toggle List2 item2
board_1.get_command # toggle List2 item3
board_1.get_command # toggle List2 item4

board_1.get_command # toggle List3 item1
board_1.get_command # toggle List3 item4

board_1.get_command # toggle List4 item14
puts
puts

board_1.get_command # showall
puts
puts

board_1.get_command # rm List1 item1
board_1.get_command # rm List3 item2
puts
puts

board_1.get_command # show all
puts
puts

board_1.get_command # purge List1
board_1.get_command # showall
puts
puts

board_1.get_command # purge List2
board_1.get_command # showall
puts
puts

board_1.get_command # up List2 1 5
board_1.get_command # up List4 3
puts
puts

board_1.get_command # showall

board_1.get_command # down List1 0 6
board_1.get_command # down List3 1
puts
puts

board_1.get_command #showall
puts
puts

board_1.get_command #swap List1 2 3
board_1.get_command #swap List3 0 3
puts
puts

board_1.get_command # showall
puts
puts

board_1.get_command # sort List1
board_1.get_command # sort List2
board_1.get_command # sort List3
board_1.get_command # sort List4
puts
puts

board_1.get_command # showall
puts
puts

board_1.get_command # priority List2
board_1.get_command # priority List3
puts
puts

board_1.get_command # print List1
board_1.get_command # print List3 1
puts
puts
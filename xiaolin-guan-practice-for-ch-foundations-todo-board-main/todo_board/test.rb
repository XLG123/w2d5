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
# Item.new(
#     'Fix checkout page',
#     '10-25-2019',
#     'The font is too small.'
# ) # raises error due to invalid date


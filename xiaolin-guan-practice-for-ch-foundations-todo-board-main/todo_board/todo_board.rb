require_relative "item"
require_relative "list"

class TodoBoard
    def initialize
        @board = {}
    end

    def get_command
        print "Enter a command: "
        cmd, *args = gets.chomp.split(" ")
        puts "You just entered #{cmd} #{args}"

        case cmd
        when 'mklist'
            @board[*args] = List.new(*args)
        when 'ls'
            @board.keys.each { |label| puts label }
        when 'showall'
            @board.values.each do |list|
                list.print
                print "\n\n\n"
            end
        when 'mktodo'
            @board[args[0]].add_item(*args[1..-1])
        when 'up'
            @board[args[0]].up(*args[1..-1].map(&:to_i))
        when 'down'
            @board[args[0]].down(*args[1..-1].map(&:to_i))
        when 'swap'
            @board[args[0]].swap(*args[1..-1].map(&:to_i))
        when 'sort'
            @board[args[0]].sort_by_date!
        when 'priority'
            @board[args[0]].print_priority
        when 'print'
            if args.length == 1
                @board[args[0]].print
            else
                @board[args[0]].print_full_item(args[1].to_i)
            end
        when 'toggle'
            @board[args[0]].toggle_item(args[1].to_i)
        when 'rm'
            @board[args[0]].remove_item(args[1].to_i)
        when 'purge'
            @board[*args].purge
        when 'quit'
            return false
        else
            print "Sorry, that command is not recognized." 
        end
        
        true
    end
end
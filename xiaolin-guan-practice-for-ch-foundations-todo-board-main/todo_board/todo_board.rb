require_relative "item"
require_relative "list"

class TodoBoard
    def initialize(label)
        @list = List.new(label)
    end

    def get_command
        print "Enter a command: "
        cmd, *args = gets.chomp.split(" ")
        puts "You just entered #{cmd} #{args}"

        case cmd
        when 'mktodo'
            @list.add_item(*args)
        when 'up'
            @list.up(*args.map(&:to_i))
        when 'down'
            @list.down(*args.map(&:to_i))
        when 'swap'
            @list.swap(*args.map(&:to_i))
        when 'sort'
            @list.sort_by_date!
        when 'priority'
            @list.print_priority
        when 'print'
            @list.print
        when 'toggle'
            @list.toggle_item(*args.map(&:to_i))
        when 'rm'
            @list.remove_item(*args.map(&:to_i))
        when 'purge'
            @list.purge
        when 'quit'
            return false
        else
            print "Sorry, that command is not recognized." 
        end
        
        true
    end
end
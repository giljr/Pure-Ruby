require "./item.rb"
require "./list.rb"

class ListApp
    attr_writer :list

    def initialize
        @list = List.new
    end

    def run
        loop do
            puts "Enter a command: a-add, s-show, c-check, u-uncheck, r-remove, ra-remove all, e-exit"
            command = gets.chomp
            case command
            when "a"
                puts "Enter item text:"
                text = gets.chomp
                @list.add_item(text)
                @list.show_all
            when "s"
                @list.show_all
            when "c"
                puts "Enter item number:"
                index = gets.chomp.to_i - 1
                @list.check_item(index)
                @list.show_all
            when "u"
                puts "Enter item number:"
                index = gets.chomp.to_i - 1
                @list.uncheck_item(index)
            when "r"
                puts "Enter item number:"
                index = gets.chomp.to_i - 1
                item = @list.remove_item(index)
                if item
                    # puts "Removed item: #{item.instance_variable_get(:@text)}"
                    puts "Removed item: #{item.text}"
                else
                    puts "Invalid item number."
                end
                @list.show_all
            when "ra"
                puts "Are you sure you want to remove all items? (y/n)"
                confirm = gets.chomp
                if confirm == "y"
                    @list.remove_all
                    puts "All items removed"
                else
                    puts "Action canceled"
                end
            when "e"
                puts "Thank you for using the shopping list app!"
                break
            else
                puts "Invalid command"
            end
        end
    end
end

app = ListApp.new
app.run
# In this snippet, we have a new class called List
# This class has an attribute called items, which is an array of Item objects
# The List class has methods
# add_item, remove_item, check_item, remove_all, and show_all
# The ListApp class uses the List class to create a simple shopping list application
# The ListApp class has a run method that takes user input to perform different actions on the list
# The user can add items, show items, check items, remove items, remove all items, and exit the application
# This example demonstrates how classes can be used to model real-world entities and interact with each other
# It also shows how classes can encapsulate data and behavior to create reusable and modular code
# The ListApp class acts as a controller for the shopping list application, coordinating interactions between the user and the list
# The List class represents the shopping list itself, managing the items and their state
# The Item class represents individual items in the list, with text and checked attributes
# By using classes and objects, we can create more complex applications with well-defined structures and responsibilities
# This allows us to organize our code more effectively and build applications that are easier to maintain and extend
# The use of classes and objects also enables us to model real-world concepts in our code, making it easier to understand and work with
# Overall, classes and objects are powerful tools in Ruby that help us create more robust and flexible applications.
require "./item.rb"

class List
    attr_writer :items
    
    def initialize
        @items = Array.new()
    end
    
    def add_item(text)
        item = Item.new(text)
        @items.push(item)
    end
    
    def remove_item(index)
        @items.delete_at(index)
    end

    def check_item(index)
        @items[index].checked = true
    end

    def uncheck_item(index)
        @items[index].checked = false
    end

    def remove_all
        @items.clear
    end

    def show_all
        if @items.empty?
            puts "No items in the list"
        else
            @items.each_with_index do |item, index|
                puts "#{index + 1}. #{item}"
            end
        end
    end


end 
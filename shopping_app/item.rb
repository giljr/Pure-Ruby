class Item
    # attr_accessor :text # Allows reading and writing to @text
    attr_writer :text, :checked
    attr_reader :text  # Allows accessing @text via item.text

    def initialize(text)
        @text = text
        @Checked = false
    end 

    def to_s
        if @checked
            "[x] " + @text
        else
            "[ ] " + @text
        end
    end
end
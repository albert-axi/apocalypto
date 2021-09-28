class ApocalyptoApp::Shop
    attr_accessor :name, :type, :value
    def initialize name:, type:, value:
        @name = name
        @type = type
        @value = value
    end

    def access_shop
        system("clear")
        puts "Food:"
        @food.each.with_index(1) do |food, i|
            puts "#{i}. #{food}"
        end
        new_line
        divider
        puts "Armour:"
        @armour.each.with_index(11) do |armour, i|
            puts "#{i}. #{armour}"
        end
        new_line
        divider
        puts "Weapons:"
        @weapons.each.with_index(21) do |weapon, i|
            puts "#{i}. #{weapon}"
        end
    end
end
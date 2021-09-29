class ApocalyptoApp::Shop
    attr_accessor :name, :type, :value, :cost
    @@all = []
    @@food = []
    @@armour = []
    @@weapons = []

    def initialize name:, type:, value:, cost:
        @name = name
        @type = type
        @value = value
        @cost = cost
        @@all << self

        if @type == "food"
            @@food << self
        elsif @type == "armour"
            @@armour << self
        else
            @@weapons << self
        end
    end

    def self.all
        @@all
    end

    def self.food
        @@food
    end

    def self.armour
        @@armour
    end

    def self.weapons
        @@weapons
    end

    def player
        ApocalyptoApp::User[-1]
    end

    def access_shop
        system("clear")
        puts "Food:"
        self.class.food.each.with_index(1) do |food, i|
            puts "#{i}. #{food.name} - $#{food.cost} - eat for #{food.value} health"
        end
        new_line
        divider
        puts "Armour:"
        self.class.armour.each.with_index(11) do |armour, i|
            puts "#{i}. #{armour.name} - $#{armour.cost} - wear for #{armour.value} defence"
        end
        new_line
        divider
        puts "Weapons:"
        self.class.weapons.each.with_index(21) do |weapon, i|
            puts "#{i}. #{weapon.name} - $#{weapon.cost} - use for #{weapon.value} damage"
        end
        puts "Enter a number to purchase the corresponding item."
        puts "Input any character to leave the shop."

        get_user_input = 0 ? player.player_stats : purchase_item(input)
    end

    def get_user_input
        input = gets.strip.to_i
        if input > self.class.all.size
            puts "Invalid selection: No store item exists."
            puts "Please input a valid number."
            return get_user_input
        end
        input
    end

    def purchase_item input
        if player.money > 
    end
end
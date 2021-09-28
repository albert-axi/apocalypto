class ApocalyptoApp::User
    attr_accessor :name, :health, :armour, :weapons, :money

    def initialize name:, health: 10, money: 100, food:, armour:, weapons:
        @name = name
        @health = health
        @money = money
        @food = [food]
        @armour = [armour]
        @weapons = [weapons]
    end

    def player_stats
        if @food.count < 3 || @armour.count < 1 || @weapons.count < 1
            puts "Uh oh - looks like you're low on supplies."
            current_supply
            puts "Input [shop] to stock up."
            exit
            input = gets.strip.downcase
            input == "shop" ? ApocalyptoApp::Shop.access_shop : exit
        elsif
            current_supply
            puts "You're ready for battle, #{self.name}! ALONZEE"
            puts "Input [fight] to start a battle."
            exit
            input = gets.strip.downcase
            input == "fight" ? ApocalyptoApp::Zombie.spawn_zombie : exit
        end
    end

    def current_supply
        puts "You currently have #{@food.count} food, #{@armour.count} armour and #{@damage.count} damage."
    end
end
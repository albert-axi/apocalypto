class ApocalyptoApp::User
    attr_accessor :name, :health, :armour, :weapons, :money

    def initialize name:, health:, armour:, weapons:, money: 100
        @name = name
        @health = []
        @armour = []
        @weapons = []
        @money = 0
    end

    def player_stats
        if @health.count < 3 || @armour.count < 1 || @weapons.count < 1
            puts "Uh oh - looks like you're low on supplies."
            current_supply
            puts "Input [shop] to stock up."
            exit
            input = gets.strip.downcase
            input == "shop" ? ApocalyptoApp::Shop.access_shop : exit
        elsif
            current_supply
            puts "You're ready for battle, #{user.name}! ALONZEE"
            puts "Input [fight] to start a battle."
            exit
            input = gets.strip.downcase
            input == "fight" ? ApocalyptoApp::Zombie.spawn_zombie : exit
        end
    end

    def current_supply
        puts "You currently have #{@health.count} health, #{@armour.count} armour and #{@damage.count} damage."
    end
end
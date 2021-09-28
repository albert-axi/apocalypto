class ApocalyptoApp::CLI
    def initialize
        ApocalyptoApp::Scraper.new.get_locations
    end

    def start
        system("clear")
        puts "Welcome to Apocalypto"
        divider
        puts "It's the end of days. A plague has taken over the world, turning people into vicious, flesh eating zombies. The world as you know it is over. You job now? Survive."
        new_line
        puts "Input your name to begin"
        puts "Enter [exit] to escape the apocalypse."

        input = gets.strip.downcase
        if input == "exit"
            exit
        elsif
            user = User.new input
            list_countries
        end
    end

    def list_countries
        system("clear")
        puts "Choose your starting area:"
        new_line
        divider
        country.each.with_index(1) do |country, i|
            puts "#{i}. #{country.name} - #{country.difficulty}"
        end

        prompt_area_selection
    end

    def prompt_area_selection
        new_line
        divider
        puts "Please enter the corresponding number to select your starting area."
        exit

        get_user_input = 0 ? exit : selected_area(input)
    end

    def get_user_input
        input = gets.strip.to_i
        if input > country.size
            puts "Invalid selection: No country exists."
            puts "Please input a valid number."
            get_user_input
        end
        input
    end

    def selected_area input
        country.[input - 1].print
        divider
        player_stats
    end

    def player_stats
        if user.health < 3 || user.armour < 1 || user.damage < 1
            puts "Uh oh - looks like you're low on supplies."
            current_supply
            puts "Input [shop] to stock up."
            exit
            input = gets.strip.downcase
            input == "shop" ? access_shop : exit
        elsif
            current_supply
            puts "You're ready for battle, #{user.name}! ALONZEE"
            puts "Input [fight] to start a battle."
            exit
            input = gets.strip.downcase
            input == "fight" ? spawn_zombie : exit
        end
    end

    def current_supply
        puts "You currently have #{user.health} health, #{user.armour} armour and #{user.damage} damage."
    end

    def access_shop
        system("clear")
        puts "Food:"
        shop.food.each.with_index(1) do |food, i|
            puts "#{i}. #{food}"
        end
        new_line
        divider
        puts "Armour:"
        shop.armour.each.with_index(11) do |armour, i|
            puts "#{i}. #{armour}"
        end
        new_line
        divider
        puts "Weapons:"
        shop.weapons.each.with_index(21) do |weapon, i|
            puts "#{i}. #{weapon}"
        end
    end

    def zombie_total
        zombies.times {|i| Zombie.new i}
        puts "There are currently #{zombies} zombies plaguing the lands."
    end

    def exit
        puts "Enter any key to escape the apocalypse."
    end

    def country
        ApocalyptoApp::Country.all
    end
end

loading = ●・○・●

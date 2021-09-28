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
        puts "Input [start] to begin"
        exit

        input = gets.strip.downcase
        input == "start" ? list_countries : exit
    end

    def list_countries
        system("clear")
        "Choose your starting area:"
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
        selection = country.[input - 1]
        puts "Welcome to #{selection.name}."
        zombie_total
        player_stats
    end

    def player_stats
        if user.food < 3 || user.armour < 1 || user.weapons < 1
            puts "Uh oh - looks like you're low on supplies."
            puts "Input [shop] to stock up."
            exit
            input = gets.strip.downcase
            input == "shop" ? access_shop : exit
        elsif
            puts "You're ready for battle! ALONZEE"
            puts "Input [fight] to start a battle."
            exit

            input = gets.strip.downcase
            input == "fight" ? spawn_zombie : exit
        end
    end

    def access_shop
    end

    def spawn_zombie
    end

    def zombie_total
        puts "There are currently #{selection.quantity} zombies."
    end

    def exit
        puts "Enter any key to exit."
    end

    def country
        ApocalyptoApp::Country.all
    end

    def new_line
        puts ""
    end

    def divider
        puts "══════════ ∘◦ ❈ ◦∘ ══════════"
    end

    def zombie
        puts "‿︵‿︵(ಥ﹏ಥ)‿︵‿︵"
    end

    def oh_no
        puts "ᵒʰ(⑉・̆⌓・̆⑉)ɴᴏ"
    end

    def hit
        puts "(ﾉ>｡☆)ﾉ"
    end
end

loading = ●・○・●

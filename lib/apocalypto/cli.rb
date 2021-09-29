class ApocalyptoApp::CLI
    def initialize
        ApocalyptoApp::Scraper.new.get_countries
        ApocalyptoApp::Scraper.new.get_supplies
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
            return get_user_input
        end
        input
    end

    def selected_area input
        country.[input - 1].print
        divider
        user.player_stats
    end

    def country
        ApocalyptoApp::Country.all
    end
end
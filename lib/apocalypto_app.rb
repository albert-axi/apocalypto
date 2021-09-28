require 'open-uri'
require 'nokogiri'
require_relative './apocalypto/supplies.rb'
require_relative './apocalypto/scraper.rb'
require_relative './apocalypto/cli.rb'

module ApocalyptoApp
    def exit
        puts "Enter any key to escape the apocalypse."
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

    loading = ●・○・●
end
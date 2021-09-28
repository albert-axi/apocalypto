class ApocalyptoApp::Zombie
    attr_accessor :health, :damage

    @@all = []
    
    def initialize id:, health: 3, damage: 1
        @id = id
        @health = health
        @damage = damage
        @@all << self
    end

    def zombie_total
        puts "There are currently #{zombies} zombies plaguing the lands."
    end
end
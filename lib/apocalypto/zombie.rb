class ApocalyptoApp::Zombie
    attr_accessor :health, :damage
    
    def initialize health: 3, damage: 1
        @health = health
        @damage = damage
    end

    def zombie_total
        zombies.times {|i| Zombie.new i}
        puts "There are currently #{zombies} zombies plaguing the lands."
    end
end
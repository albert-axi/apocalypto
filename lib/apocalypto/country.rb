class ApocalyptoApp::Country
    attr_accessor :name, :zombies

    @@all = []

    def initialize name:, zombies:
        @name = name
        @zombies = zombies
        @@all << self
        
        zombies.times {|i| Zombie.new id: i}
    end

    def self.all
        @@all
    end
    
    def print
        system("clear")
        zombies = self.quantity
        puts "Welcome #{user.name} to #{selection.name}."
        zombie_total
    end

    def spawn_zombie
        if Zombie.all.count == 1 
        zombie
        puts "A wild zombie appears! Quick attack it with your "
    end
end
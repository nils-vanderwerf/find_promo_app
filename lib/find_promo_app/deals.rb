class Deals
    attr_accessor :title, :location, :url, :price, :promotion, :about
    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end

    def self.reset_all
        @@all.clear
    end

end
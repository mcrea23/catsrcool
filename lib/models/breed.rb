class Breed
  attr_accessor :name, :affection, :shedding_level, :origin, :temperament
  
  @@all = []

    def initialize(breed_data)
      self.affection = breed_data["affection_level"]
      self.name = breed_data["name"]
      self.shedding_level = breed_data["shedding_level"]
      self.origin = breed_data["origin"]
      self.temperament = breed_data["temperament"]
      @@all << self
    end
    
    def self.all
      @@all
    end

end




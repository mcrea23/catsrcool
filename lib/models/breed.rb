class Breed
  attr_accessor :name, :affection, :shedding_level, :origin, :temperament
  
  @@all = []

    def initialize(breed_data)
      self.affection = breed_data["affection_level"]
      # @affection = affection
      self.name = breed_data["name"]
      self.shedding_level = breed_data["shedding_level"]
      self.origin = breed_data["orgin"]
      self.temperament = breed_data["temperament"]
      @@all << self
# binding.pry
    end
    def self.all
      @@all
    end

end
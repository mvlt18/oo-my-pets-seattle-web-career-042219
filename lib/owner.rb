require "pry"

class Owner

  @@all = []

  attr_accessor :name, :pets

  attr_reader :species

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end

    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end

    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end

    @pets.each do |pet, pet_array|
      pet_array.clear
    end
  end


  def list_pets
    num_f = @pets[:fishes].count
    num_d = @pets[:dogs].count
    num_c = @pets[:cats].count

    "I have #{num_f} fish, #{num_d} dog(s), and #{num_c} cat(s)."
  end



  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

end

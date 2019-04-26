class Cat
  attr_accessor :mood

  attr_reader :name #getter - will not be able to change name

  def initialize(name, mood="nervous")
    @name = name
    @mood = mood
  end
end

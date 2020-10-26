class Dog
  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :breed, :age

  def initialize(name, breed, age)
    @name, @breed, @age = name, breed, age
    self.save
  end

  def save
    self.class.all << self
  end
end

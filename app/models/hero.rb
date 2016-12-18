
class Hero

  attr_accessor :name, :power, :biography, :team
  @@ALL = []


  def initialize(hash)
    @name = hash[:name]
    @power = hash[:power]
    @biography = hash[:biography]
    @@ALL << self
    self
  end
  
  def self.all
    @@ALL
  end


end
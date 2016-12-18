
class Team
  attr_accessor :name, :motto
  @@ALL = []


  def initialize(hash)
    @name = hash[:name]
    @motto = hash[:motto]
    @heroes = []
    @@ALL << self
    self
  end

  def self.all
    @@ALL
  end

  def heroes
    @heroes
  end

end
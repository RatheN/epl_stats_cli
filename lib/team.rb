class Team
  attr_accessor :name, :rank, :goals_for, :goals_against, :points
  @@all = []

  def initialize(name = nil, rank = nil, goals_for = nil, goals_against = nil, points = nil)
    @name = name
    @rank = rank
    @goals_for = goals_for
    @goals_against = goals_against
    @points = points
    @@all << self
  end

  def self.all
    @@all
  end
end

class Team
  attr_accessor :rank, :name, :goals_for, :goals_against, :points
  @@all = []

  def initialize(rank = nil, name = nil, goals_for = nil, goals_against = nil, points = nil)
    @rank = rank
    @name = name
    @goals_for = goals_for
    @goals_against = goals_against
    @points = points
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_from_table(t)
    self.new(
      t.css('.nd-table-td.tbl-rank.nd-team').collect {|c| c.css('span').text.strip},
      t.css('.nd-table-td.tbl-team').collect {|c| c.css('span').text.strip},
      t.css('.nd-table-td.tbl-gf').collect {|c| c.css('span').text.strip},
      t.css('.nd-table-td.tbl-ga').collect {|c| c.css('span').text.strip},
      t.css('.nd-table-td.tbl-pts').collect {|c| c.css('span').text.strip}
      )
  end

end

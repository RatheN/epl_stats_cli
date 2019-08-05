class PlStats::CLI
  def run
    Scraper.new.make_teams
    puts "Welcome to the Premier League 2018-19 Table."
    Team.all[5, 1].each do |team|
      puts "#{team.rank.join} #{team.name.join} #{team.goals_for.join} #{team.goals_against.join} #{team.points.join}"
      puts "#{Team.all[5].name}"
      start
    end

  end

  def start
    puts "\nWould you like to view the top of the table, the middle of the table, or the bottom of the table?"
    puts "(please enter: 'top', 'middle', or 'bottom')"
    input = gets.strip.downcase

    if input == "top"
      top_table_teams
    elsif input == "middle"
      mid_table_teams
    elsif input == "bottom"
      bottom_table_teams
    else
      puts "Please enter a valid option."
      start
    end

    puts "\nWhich team's stats would you like to view?"
    puts "(enter a number from 1 - 20)"
    input = gets.strip.to_i-1

    team_stats(input)
  end

  def top_table_teams
    puts "\nThese are the teams from the 2018-19 season that finished in the top 5 of the table."
    puts "The top 4 teams in the Premier League qualify for the UEFA Champions League."
    puts "The team that finishes in 5th place qualifies for the UEFA Europa League."
    puts "\nTop 5 teams (1st - 5th in order):\n"
    Team.all[0, 5].each do |team|
      puts "#{team.rank.join}.  #{team.name.join}"
    end
  end

  def mid_table_teams
    puts "\nThese are the teams from the 2018-19 season that finished in the middle of the table."
    puts "These teams did not qualify for the UEFA Champions League or the UEFA Europa League, but they were not relegated to a lower level league."
    puts "\nMiddle of the table teams (6th - 17th in order):\n"
    Team.all[5, 12].each do |team|
      puts "#{team.rank.join}.  #{team.name.join}"
    end
  end

  def bottom_table_teams
    puts "\nThese are the teams from the 2018-19 season that finished at the bottom of the table."
    puts "These teams were relegated to a lower level league in England."
    puts "\nBottom of the table teams (18th - 20th in order):\n"
    Team.all[17, 3].each do |team|
      puts "#{team.rank.join}.  #{team.name.join}"
    end
  end

  def team_stats(input)
    puts "\n\n----------#{Team.all[input].name.join}----------\n\n#{Team.all[input].name.join} finished the 2018/19 Premier League season ranked ##{Team.all[input].rank.join} on the table."

  end

end

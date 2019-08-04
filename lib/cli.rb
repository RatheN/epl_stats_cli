class PlStats::CLI
  def run
    puts "Welcome to the Premier League 2018-19 Table."
    start
  end

  def start
    puts "Would you like to view the top of the table, the middle of the table, or the bottom of the table?"
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

    puts ""
    puts "Which team's stats would you like to view?"
    puts "(enter a number from 1 - 20)"
  end

  def top_table_teams
    puts ""
    puts "These are the teams from the 2018-19 season that finished in the top 5 of the table."
    puts "The top 4 teams in the Premier League qualify for the UEFA Champions League."
    puts "The team that finishes in 5th place qualifies for the UEFA Europa League."
    puts ""
    puts "Top 5 teams (1st - 5th in order):"
    puts ""
    puts "(teams go here)"
  end

  def mid_table_teams
    puts ""
    puts "These are the teams from the 2018-19 season that finished in the middle of the table."
    puts "These teams did not qualify for the UEFA Champions League or the UEFA Europa League, but they were not relegated to a lower level league."
    puts ""
    puts "Middle of the table teams (6th - 17th in order):"
    puts ""
    puts "(teams go here)"
  end

  def bottom_table_teams
    puts ""
    puts "These are the teams from the 2018-19 season that finished at the bottom of the table."
    puts "These teams finished in the bottom 3 places and were relegated to a lower level league in England."
    puts ""
    puts "Bottom of the table teams (18th - 20th in order):"
    puts ""
    puts "(teams go here)"
  end
end

class Scraper
  def get_page
    Nokogiri::HTML(open("https://sports.ndtv.com/english-premier-league/epl-table/2018-19"))
  end

  def scrape_index
    self.get_page.css('.nd-table.nd-accord-head.active')
  end

  def make_teams
    scrape_index.each do |t|
      Team.new_from_table(t)
    end
  end

end

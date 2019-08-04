class Scraper
  def self.scrape_index_page
    doc = Nokogiri::HTML(open("https://sports.ndtv.com/english-premier-league/epl-table/2018-19"))
    teams_list = []

    doc.css('.nd-table nd-accord-head active').each do |t|
      name = t.css('.nd-table-td tbl-team').span.text
    end
  end
end

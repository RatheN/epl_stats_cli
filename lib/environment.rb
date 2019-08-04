require 'pry'
require 'nokogiri'
require 'open-uri'


module PlStats
  class Error < StandardError; end
  # Your code goes here...
end

require_relative './scraper'
require_relative './team'
require_relative './cli'
require_relative './pl_stats/version'

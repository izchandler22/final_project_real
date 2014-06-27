require './texting'
require './worldcup'
require 'pry'


task :text do
  soccer = Scrape.new
  @scores = soccer.scraping_results.to_s.strip
  message = Text.new
  message.texting('+19176289337')
end

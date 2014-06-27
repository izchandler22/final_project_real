require './lib/texting'
require './lib/worldcup'
require 'pry'


task :text do
  soccer = Scrape.new
  @scores = soccer.scraping_results.to_s.strip
  message = Text.new
  message_isabelle = Text.new
  message.texting('+19176289337')
  message_isabelle.texting('+19176030345')
end

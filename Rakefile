require './texting'
require './worldcup'

task :text do
  soccer = Scrape.new
  scores = soccer.scraping_results
  scores.each do |score|
    message = Text.new
    message.texting(+19176289337, score[0])
  end
end

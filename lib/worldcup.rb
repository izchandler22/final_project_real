require 'nokogiri'
require 'open-uri'

class Scrape
  attr_accessor :todays_games

  def initialize
   # binding.pry
   @soccerscores = Nokogiri::HTML(open('http://www.fifa.com/worldcup/matches/index.html'))
   @todays_games
  end

    def scraping_results
      @todays_games = []

      @soccerscores.css("div.match-list-date").each do |date|
        game_day = date.css(".h3-wrap").text
        todays_date = Time.now.strftime("%A %d %B") 
        if game_day == todays_date
          home = date.css(".home .t-nText").text.strip
          away = date.css(".away .t-nText").text.strip
          score = date.css(".s .s-scoreText").text.strip
          if score.include?(":")
            @todays_games << "The game between #{home} and #{away} starts at #{score}."
          else
            @todays_games << "The score was #{home} #{score} #{away}."
          end
        end
      end
      @todays_games
    end
end


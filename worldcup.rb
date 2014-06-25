require 'nokogiri'
require 'pry'
require 'open-uri'

class Scrape


  def initialize
   
   @soccerscores = Nokogiri::HTML(open('http://www.fifa.com/worldcup/matches/index.html'))

  end
    def scraping_results

      @soccerscores.css("div.col-xs-12.clear-grid div.mu.result").each do |day8|

        first_team = day8.children[0].children[2].children[0].children[1].children[0].children.text
        second_team = day8.children[0].children[2].children[1].children[1].children[0].children.text
        score_game = day8.children[0].children[2].children[2].children[0].children.children[2].text
        binding.pry
      end
    end

  def scraping_games
    @soccerscores = Nokogiri::HTML(open('http://www.fifa.com/worldcup/matches/index.html'))
    upcoming_games = {}
        @soccerscores.css("div.col-xs-12.clear-grid div.mu.fixture").each do |upcoming|
          binding.pry
           if title = upcoming.children[0].children[2].children[0].children[1].children[0].children.text + " vs. " +  upcoming.children[0].children[2].children[1].children[1].children[0].children.text
              puts upcoming.children[0].children[2].children[0].children[1].children[0].children.text + " vs. " +  upcoming.children[0].children[2].children[1].children[1].children[0].children.text
            else
              puts "These games have not been determined"
            end

            upcoming_games[title] = {
              :first_team_upcoming => upcoming.children[0].children[2].children[0].children[1].children[0].children.text,
              :second_team_upcoming => upcoming.children[0].children[2].children[1].children[1].children[0].children.text,
              :time_game => upcoming.children[0].children[2].children[2].children[0].children.children[2].text
            }
        end
    upcoming_games
  end
  binding.pry
end
























# soccerscores.css("div.s-score.s-date-HHmm")[19].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[20].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[21].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[22].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[23].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[24].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[25].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[26].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[27].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[28].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[29].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[30].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[31].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[32].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[33].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[34].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[35].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[36].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[37].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[38].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[39].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[40].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[41].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[42].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[43].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[44].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[45].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[46].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[47].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[48].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[49].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[50].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[51].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[52].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[53].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[54].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[55].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[56].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[57].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[58].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[59].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[60].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[61].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[62].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[63].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[64].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[65].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[66].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[67].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[68].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[69].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[70].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[71].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[72].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[73].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[74].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[75].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[76].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[77].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[78].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[79].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[80].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[81].css("span.s-scoreText").text
# soccerscores.css("div.s-score.s-date-HHmm")[82].css("span.s-scoreText").text

# puts soccerscores


 





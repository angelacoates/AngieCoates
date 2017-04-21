require 'httparty'
require 'json'
require 'ap'

class Film
    def get_opening_crawl(episode_identifier)
      response = HTTParty.get("http://swapi.co/api/films")
      @questions = JSON.parse(response.body)
      @answer = @questions["results"].find { |result|
      result["episode_id"] = episode_identifier }
    return @answer["opening_crawl"]
  end
end

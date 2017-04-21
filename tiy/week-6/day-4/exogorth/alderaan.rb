require 'httparty'
require 'json'
require 'ap'
require_relative 'film'
require_relative 'character'

class Main
  def initialize
    @film = Film.new
    @character = Character.new
  end

  def ask_questions
    puts "Type the number of the movie you would like to know more about:"
    puts "1. A New Hope "
    puts "2. The Empire Strikes Back"
    puts "3. Return of the Jedi"
    puts "4. The Phantom Menace"
    puts "6. Revenge of the Sith"
    puts "7. The Force Awakens"
    choice = gets.chomp
    return choice
  end

  def contiue_questions
    puts "Would you like to know more? yes or no"
    input = gets.chomp
    return input
  end

  def menu
    choice = ()
    while choice != ""
      choice = ask_questions
      if choice == "1"
        puts @film.get_opening_crawl(4)
        input = continue_questions
      elsif choice == "2"
        puts @film.get_opening_crawl(5)
        input = continue_questions
      elsif choice == "3"
        puts @film.get_opening_crawl(6)
        input = continue_questions
      elsif choice == "4"
        puts @film.get_opening_crawl(1)
        input = continue_questions
      elsif choice == "5"
        puts @film.get_opening_crawl(2)
        input = continue_questions
      elsif choice == "6"
        puts @film.get_opening_crawl(3)
        input = continue_questions
      elsif choice == "7"
        puts @film.get_opening_crawl(7)
        input = continue_questions
      elsif choice == "yes"
      end
    end
  end
end

Main.new.menu

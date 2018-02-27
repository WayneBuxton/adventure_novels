require "pry"
class AdventureNovels::CLI

  def call
    list_novels
    menu
  end

  def list_novels
    puts "Top 10 Adventure Novels:"
    page = Nokogiri::HTML(open("https://www.publishersweekly.com/pw/by-topic/industry-news/tip-sheet/article/69690-the-10-best-adventure-novels.html"))
      puts page.css(".listicle-info").first.css("h3").text
    #binding.pry
  end

  def menu
    puts "Which book would you like to know more about?"
    input = gets.strip
    page = Nokogiri::HTML(open("https://www.publishersweekly.com/pw/by-topic/industry-news/tip-sheet/article/69690-the-10-best-adventure-novels.html"))
    case input
    when "1"
      puts  page.css(".listicle-info").first.css('p').text
    when "2"
      puts "More info on deal 2..."
    end
  end
end

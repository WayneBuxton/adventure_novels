require "pry"
class AdventureNovels::CLI

  def call
    list_novels
    menu
  end

  def list_novels
    puts "Top 10 Adventure Novels:"
    page = Nokogiri::HTML(open("https://www.publishersweekly.com/pw/by-topic/industry-news/tip-sheet/article/69690-the-10-best-adventure-novels.html"))
    title = page.css("div.listicle-item")
    title.each {|t| puts t.css("h3").text }
  end

  def menu
    puts "Which book would you like to know more about?"
    input = gets.strip
    page = Nokogiri::HTML(open("https://www.publishersweekly.com/pw/by-topic/industry-news/tip-sheet/article/69690-the-10-best-adventure-novels.html"))
    case input
    when "1"
      puts  page.css(".listicle-info")[0].css('p').text
    when "2"
      puts page.css(".listicle-info")[1].css('p').text
    when "3"
      puts page.css(".listicle-info")[2].css('p').text
    when "4"
      puts page.css(".listicle-info")[3].css('p').text
    when "5"
      puts page.css(".listicle-info")[4].css('p').text
    when "6"
      puts page.css(".listicle-info")[5].css('p').text
    when "7"
      puts page.css(".listicle-info")[6].css('p').text
    when "8"
      puts page.css(".listicle-info")[7].css('p').text
    when "9"
      puts page.css(".listicle-info")[8].css('p').text
    when "10"
      puts page.css(".listicle-info")[9].css('p').text
    end
  end
end

class AdventureNovels::Novel

  attr_accessor :title, :url

  def self.all
    page = Nokogiri::HTML(open("https://www.publishersweekly.com/pw/by-topic/industry-news/tip-sheet/article/69690-the-10-best-adventure-novels.html"))
    page.css("div.listicle-item").each {|t| puts t.css("h3").text }


    novel_1 = self.new
    novel_1.title = "The Odyssey"
    novel_1.url = "https://www.publishersweekly.com/pw/by-topic/industry-news/tip-sheet/article/69690-the-10-best-adventure-novels.html"

    [novel_1]

  end

end

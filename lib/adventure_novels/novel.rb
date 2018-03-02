class AdventureNovels::Novel

  def self.all
    page = Nokogiri::HTML(open("https://www.publishersweekly.com/pw/by-topic/industry-news/tip-sheet/article/69690-the-10-best-adventure-novels.html"))
    page.css("div.listicle-item").each {|t| puts t.css("h3").text }
  end
end

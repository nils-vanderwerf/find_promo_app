require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative './deals.rb'

class Scraper
  

  def get_page
    base_url = "https://www.scoopon.com.au"
    doc = Nokogiri::HTML(open(base_url))
    deals = doc.css("div.deal-item")
    deals.each do |deal|
        title = deal.css("h3.deal-title span").text.strip
        url = deal.css("div.deal-item a")[0]
        if !title.empty? && !url.empty?
            deal = Deals.new
            deal.title = title
            deal.url = base_url + url.attribute("href").value
            deal.location = deal.css(".deal-subtitle span").text.strip
            #SecoND Scrape
            get_more_details(deal.url)
        end
        binding.pry
    end

  end

def get_more_details(url)
    puts url
end
  
end




Scraper.new.get_page

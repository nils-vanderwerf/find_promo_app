require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative './deals.rb'

class Scraper
  

  def get_page
    base_url = "https://www.scoopon.com.au"
    doc = Nokogiri::HTML(open(base_url))
    deal_cards = doc.css("div.deal-item")
    deal_cards.each do |deal|
        title = deal.css("h3.deal-title span").text.strip
        url_params = deal.css("a").attribute("href").value
        if !title.empty? && !url_params.empty?
            deal_instance = Deals.new
            deal_instance.title = title
            deal_instance.url = base_url + url_params
            puts deal_instance.url
            deal_instance.locaticd on = 
            "#{deal.css(".deal-subtitle span.specific").text.strip} - #{deal.css(".deal-subtitle span.general").text.strip}"
            
            deal_instance.price = deal.css('a div.deal-pricing div.price-box div.price-text').text.strip
            deal_instance.promotion = deal.css('a div.deal-saving span.amount_off').text.strip
            get_more_details(deal_instance, deal_instance.url)
        end
        
    end

    binding.pry
  end

  def get_more_details(deal_instance, url)
    doc = Nokogiri::HTML(open(url))
    deal_instance.about = doc.css('.styles__Content-sc-14qr04h-6').text.strip
  end
end




Scraper.new.get_page

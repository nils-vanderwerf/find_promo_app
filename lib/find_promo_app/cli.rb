class FindPromoApp::CLI

    def call
        puts "Welcome to this amazing promo finder!"
        puts "Type the kind of deal are you looking for today"
        puts "Type the corresponding number, or type 'quit' to exit"
        puts <<-DOC.gsub /^\s*/, ''
        1. Anything
        2. Anything near me
        3. Dining
        4. Fun
        5. Spa/Salon
        6. Services
        7. Retail
    DOC
        user_input
        scraper
        
    end


    def user_input

        input = nil
        while input != "quit"
        input = gets.strip
        case input 
            when "1"
                puts "Here are some promotions"
                Scraper.get_page("https://www.localflavor.com/deals")
            when "2"
                puts "Please enter your postcode"
                po    

        Scraper.get_page
    end




end

class BaliHotelFinder::CLI

    def call
      BaliHotelFinder::Scraper.new.make_hotels
      puts "Here are the best Bali Hotels and Resorts!"
      start
    end

    def start
      puts "In what area would you like to stay?"
      input = gets.strip

      print_location(input)

      puts "What hotel would you like to learn more about?"
      input = gets.strip

      hotel = BaliHotelFinder::Hotels.find(input)

      print_hotels(hotel)

      puts "Would you like to see another hotel or resort? Enter Y or N"

      input = gets.strip.downcase
        if input == "y"
          start
        else
          goodbye
        end

        def print_hotels(hotel)
          puts "#{hotel.name}" - "#{hotel.location}"
          puts ""
          puts "Contact:     #{hotel.contact}"
          puts "Class:     #{hotel.hotel_class}"
          puts ""
          puts "Description"
          puts ""
          puts "#{hotel.description}"
        end
        def goodbye
          puts "Thank you! Come back later for updated hotels and prices."
        end
    end

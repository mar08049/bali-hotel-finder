class BaliHotelFinder::Scraper

  def get_page
    doc = Nokogiri::HTML(open("https://travel.usnews.com/Hotels/Bali_Indonesia/"))
  end

  def create_hotel_hash
    html = Nokogiri.read('https://travel.usnews.com/Hotels/Bali_Indonesia/')
    hotels = Nokogiri::HTML(html)

    hotels = {}

    hotels.css.each do |hotel|
      name = hotel.css("h3.ellipsis-text search-results-link").text
      hotel = {
        :description => hotel.css("div#profile-overview").text,
        :hotel_class => hotel.css("div.media-body").text,
        :contact => project.css("p.text-loose hero-ranking-data-contact-block-normal text-small").text
      }
   end
end

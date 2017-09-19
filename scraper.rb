class BaliHotelFinder::Scraper

  def get_page
    doc = Nokogiri::HTML(open("https://travel.usnews.com/Hotels/Bali_Indonesia/"))
  end

  def hotel_index
  html = self.get_page
  hotels_array = html.css("h1.hero-heading flex-media-heading block-tight hero-heading text-tighter block-normal flex-media-heading").text
  hotels_array.each do |hotel|
    hotels = BaliHotelFinder::Hotel.new
    hotels.name = hotel.css("h3.ellipsis-text search-results-link").text
    hotels.description = hotel.css("div#profile-overview").text
    hotels.hotel_class = hotel.css("div.media-body").text
    hotels.contact = hotel.css("p.text-loose hero-ranking-data-contact-block-normal text-small").text
 end
end

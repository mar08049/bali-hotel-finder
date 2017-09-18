class BaliHotelFinder::Hotel

  attr_accessor :name, :location, :hotel_class, :contact, :description

  def initialize(name, hotel_class, location, description)
    @name = name
    @hotel_class = hotel_class
    @location = location
    @contact = description
    @description = description
  end

end

class BaliHotelFinder::Hotel

  attr_accessor :name, :location, :hotel_class, :contact, :description

  @@all = []

  def initialize(name, hotel_class, location, description)
    @name = name
    @hotel_class = hotel_class
    @location = location
    @description = description
    @@all << self
  end

  def self.all
    @@all
  end


end

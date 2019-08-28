class Station
  attr_reader :name, :address, :fuel_type, :distance, :access_times

  def initialize(data)
    @name = name
    @address = address
    @fuel_type = fuel_type
    @distance = distance
    @access_times = access_times
  end
end

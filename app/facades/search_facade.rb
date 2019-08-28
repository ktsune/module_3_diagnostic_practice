class SearchFacade
  def nearest_stations
    # => make faraday object
    conn = Faraday.new(:url => 'https://developer.nrel.gov/api/alt-fuel-stations/v1/')

    # => make get request & parse json response

    # => turn json into objects

    # => move api call logic into a service if there is time
  end
end

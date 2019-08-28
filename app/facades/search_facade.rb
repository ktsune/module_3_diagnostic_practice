class SearchFacade
  def nearest_stations
    # => make faraday object
    conn = Faraday.new(:url => 'https://developer.nrel.gov/api/alt-fuel-stations/v1') do |f|
      f.headers['X-API-KEY'] = ENV['NREL_KEY']
      f.adapter  Faraday.default_adapter
    end
    # => make get request & parse json response
    binding.pry
    res = JSON.parse(conn.get('/nearest.json?fuel_type=ELEC,LPG&limit=10&location=Denver, CO'), symbolize_names: true)
    # => turn json into objects
    # => move api call logic into a service if there is time
  end
end

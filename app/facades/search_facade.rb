class SearchFacade
  def nearest_stations
    # => make faraday object
    conn = Faraday.new(:url => 'https://developer.nrel.gov') do |f|
      f.headers['X-API-KEY'] = ENV['NREL_KEY']
      f.adapter  Faraday.default_adapter
    end
    # => make get request & parse json response
    res = conn.get('/api/alt-fuel-stations/v1/nearest.json?fuel_type=ELEC,LPG&limit=10&location=Denver,CO')
    # binding.pry
    result = JSON.parse(res.body, symbolize_names: true)

    # => turn json into objects
    result.map do |result|
      Station.new(result)
    end
  end
  # => move api call logic into a service if there is time
end

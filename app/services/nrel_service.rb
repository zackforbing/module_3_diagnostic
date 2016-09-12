class NrelService

  def initialize
    conn = Faraday.new("https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json") do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.headers['api_key'] = "#{NREL_KEY}"
    end
  end

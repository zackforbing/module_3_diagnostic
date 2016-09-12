class NrelService

  def initialize
    conn = Faraday.new("https://api.github.com") do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.headers['api_key'] = "#{NREL_KEY}"
    end
  end

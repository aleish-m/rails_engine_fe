class MerchantService
  def self.get_all_merchants
    response = conn.get('/api/v1/merchants')
    parse(response.body)
  end

  private 

  def self.conn
    Faraday.new('http://localhost:3000')
  end

  def self.parse(response)
    JSON.parse(response, symbolize_names: true)
  end
end
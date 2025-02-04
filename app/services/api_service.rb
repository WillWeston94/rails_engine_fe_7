require 'json'

class ApiService
  def self.conn
    Faraday.new(url: 'http://localhost:3000')
  end

  def self.get_merchants
    response = conn.get('/api/v1/merchants')
    parsed_response = JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchant_items(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}/items")
    parsed_response = JSON.parse(response.body, symbolize_names: true)
  end
end
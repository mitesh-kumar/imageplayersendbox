class StoreController < ApplicationController
    require 'json'
  require 'net/http'
  
  def index
    resp = Net::HTTP.get_response(URI.parse('http://192.254.141.167/~fstech/pic.php'))
  data = resp.body
    @response = JSON.parse(data)
  end
end

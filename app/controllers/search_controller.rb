require 'open-uri'
require 'net/http'
require 'uri'

class SearchController < ApplicationController
  def index
  end
  
  def results
	query = params[:q]
	uri = URI("http://www.faroo.com/api?q=#{query}&start=1&length=10&l=en&src=web&f=json")	
	@search_results = Net::HTTP.get_response(uri)
	puts @search_results
  end
end

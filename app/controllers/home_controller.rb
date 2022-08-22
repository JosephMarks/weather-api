# frozen_string_literal: true

require 'net/http'

class HomeController < ApplicationController
    def index
        url = "https://api.openweathermap.org/data/2.5/weather?lat=37.129&lon=-84.0833&units=imperial&appid=3f7afb2fa58bee6d69eb977195b06d57"
        uri = URI(url)
        res = Net::HTTP.get_response(uri)
        @data = JSON.parse(res.body)
    end
end
class WeatherController < ApplicationController

  def index
    @hash = {:hey => 'enter city and state'}
    @hash = get_weather(params[:city],params[:state])
    # in case i want to set a variable per key value
    if @hash != nil
      @hash.each_pair { |k,v| instance_variable_set("@#{k}",v)}
    end

  end

  def show
    
  end

end


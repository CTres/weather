module WeatherHelper
	
  def get_weather(city,state)
   hash = {}
   w_api = Wunderground.new("34b5aae9161b5bee")
	 hash = w_api.conditions_for("#{state}", "#{city}")
   hash["current_observation"]
  end
end

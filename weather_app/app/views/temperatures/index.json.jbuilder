json.array!(@temperatures) do |temperature|
  json.extract! temperature, :id, :title, :celcius, :fahrenheit, :description
  json.url temperature_url(temperature, format: :json)
end

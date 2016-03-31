json.cache! ['/', @dummy] do
  json.(@dummy, :value)
  json.random rand(100)
end

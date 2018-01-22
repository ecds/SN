json.array!(@stops) do |stop|
  json.extract! stop, :id, :type_of_stop, :line_number, :ritual, :ritual_deity
  json.url stop_url(stop, format: :json)
end

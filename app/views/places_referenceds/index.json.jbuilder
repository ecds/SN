json.array!(@places_referenceds) do |places_referenced|
  json.extract! places_referenced, :id, :line_number, :type_of_reference, :ritual, :ritual_deity
  json.url places_referenced_url(places_referenced, format: :json)
end

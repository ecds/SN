json.array!(@argonautica_people) do |argonautica_person|
  json.extract! argonautica_person, :id, :name, :origin_id, :tribe
  json.url argonautica_person_url(argonautica_person, format: :json)
end

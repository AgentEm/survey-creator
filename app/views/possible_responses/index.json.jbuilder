json.array!(@possible_responses) do |possible_response|
  json.extract! possible_response, :id, :value, :colour, :label, :icon_id
  json.url possible_response_url(possible_response, format: :json)
end

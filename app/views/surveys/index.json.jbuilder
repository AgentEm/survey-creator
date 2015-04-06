json.array!(@surveys) do |survey|
  json.extract! survey, :id, :name, :languages, :uses_category_selector
  json.url survey_url(survey, format: :json)
end

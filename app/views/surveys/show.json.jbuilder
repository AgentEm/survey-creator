json.extract! @survey, :name, :languages, :uses_category_selector
json.categories @survey.categories do |category|
  json.name category.name
  json.colour category.colour
  json.icon_id category.icon_id
  json.questions category.questions do |question|
    json.question_id question.question_id
    json.question_type_id question.question_type_id
    json.label question.label
    json.possible_responses question.possible_responses do |response|
      json.value response.value
      json.label response.label
      json.icon_id response.icon_id
      json.colour response.colour
    end
  end
end

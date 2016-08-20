json.array!(@curriculums) do |curriculum|
  json.extract! curriculum, :id, :candidate, :content, :role, :tools, :words, :verbs, :received_ate, :evaluated_at
  json.url curriculum_url(curriculum, format: :json)
end

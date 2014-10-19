json.array!(@time_logs) do |time_log|
  json.extract! time_log, :id, :project_id, :user_id, :hours
  json.url time_log_url(time_log, format: :json)
end

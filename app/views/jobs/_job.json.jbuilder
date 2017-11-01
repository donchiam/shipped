json.extract! job, :id, :name, :description, :user, :containers, :origin, :destination, :cost, :created_at, :updated_at
json.url job_url(job, format: :json)

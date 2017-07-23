json.extract! job, :id, :title, :company, :suburb, :salary, :description, :type, :source_link, :created_at, :updated_at
json.url job_url(job, format: :json)

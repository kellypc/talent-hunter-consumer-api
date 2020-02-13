require 'httparty'

class ServiceConsumer
  def self.get_job_application(job_application_id)
    HTTParty.get("http://localhost:3000/api/v1/job_applications/#{job_application_id}")
  end
end

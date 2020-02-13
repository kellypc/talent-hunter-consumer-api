require 'httparty'
require 'byebug'

require_relative '../lib/services_consumer'

RSpec.describe 'Validar a api de job_applications' do
  let (:job_application_id) { 3 }

  it 'Deve retornar 200 para a request valida' do
    response = ServiceConsumer.get_job_application(job_application_id)

    expect(response.success?).to be true

    job_application = JSON.parse(response.body, symbolize_names: true)

    expect(job_application[:id]).to eq job_application_id
  end
end

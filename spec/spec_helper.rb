# frozen_string_literal: true
require 'httparty'

require 'active_support/all'
PROJECT_ROOT = File.expand_path('..', __dir__)

Dir.glob(File.join(PROJECT_ROOT, 'lib', '*.rb')).each do |file|
 autoload File.basename(file, '.rb').camelize, file
end

RSpec.configure do |config|
  config.before(:all) do
    class HttParty
      include HTTParty
      base_uri 'https://jsonplaceholder.typicode.com/'
    end
  end
end

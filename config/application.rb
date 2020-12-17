require 'action_controller/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'delayed_job_active_record'

class MiniApp < Rails::Application
  config.active_job.queue_adapter = :delayed_job
end

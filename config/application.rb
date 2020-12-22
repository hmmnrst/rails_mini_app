require 'action_controller/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'delayed_job_active_record'

class MiniApp < Rails::Application
  config.active_job.queue_adapter = :delayed_job
  ::Delayed::Backend::ActiveRecord.configuration.reserve_sql_strategy = :default_sql

  # config.log_level = :info
  config.log_formatter = ::Logger::Formatter.new
end

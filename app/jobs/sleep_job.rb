class SleepJob < ActiveJob::Base
  queue_as :default

  def perform(msec)
    sleep msec.fdiv(1000)
  end
end

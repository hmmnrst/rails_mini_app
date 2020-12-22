class SleepJobController < ActionController::Base
  def index
    num = 1000
    num.times { SleepJob.perform_later(0) }
    render plain: "Registered #{num} jobs.\n"
  end
end

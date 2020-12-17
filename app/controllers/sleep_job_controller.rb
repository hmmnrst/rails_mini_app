class SleepJobController < ActionController::Base
  def index
    num = 100
    num.times { SleepJob.perform_later(rand(10_000)) }
    render plain: "Registered #{num} jobs.\n"
  end
end

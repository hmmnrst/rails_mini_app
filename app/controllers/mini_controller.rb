class MiniController < ActionController::Base
  def index
    render plain: "Hello, world!\n"
  end
end

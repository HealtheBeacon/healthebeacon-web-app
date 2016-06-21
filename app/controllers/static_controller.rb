class StaticController < ActionController::Base
  def about
    render :layout => 'application'
  end
end

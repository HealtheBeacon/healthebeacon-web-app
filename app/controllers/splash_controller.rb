class SplashController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def view
    @team_presenter = Teams::TeamsPresenter.new(User.all)
    render :layout => 'application'
  end
end

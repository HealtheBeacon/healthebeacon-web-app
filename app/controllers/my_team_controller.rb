class MyTeamController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def view
    @teams = Team.all
    @users = User.order(:score).reverse_order.where(teamid: 1)
    render :layout => 'application'
  end
end

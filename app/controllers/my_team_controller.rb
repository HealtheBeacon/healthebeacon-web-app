class MyTeamController < ActionController::Base
  def view
    @teams = Team.all
    @users = User.order(:score).reverse_order.where(teamid: 1)
    render :layout => 'application'
  end
end

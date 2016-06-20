class TeamsController < ActionController::Base

  def view
    @team_presenter = Teams::TeamsPresenter.new(User.all)
    render :layout => 'application'
  end

  def show
    @teams = Team.all
    @team = Team.where(id: params[:id])
    @users = User.order(:score).reverse_order.where(teamid: params[:id])
    render "my_team/view"
  end
end

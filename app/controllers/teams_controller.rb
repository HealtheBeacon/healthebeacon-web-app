class TeamsController < ActionController::Base

  def view
    @team_presenter = Teams::TeamsPresenter.new(User.all)
    render :layout => 'application'
  end
end

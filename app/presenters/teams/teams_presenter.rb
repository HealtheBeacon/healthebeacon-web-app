module Teams
  class TeamsPresenter

    def initialize(all_users)
      @all_users = all_users
    end

    def team_members(i)
      return unless i.to_i
      User.where(teamid: i)
    end

    def team_hash()
      team_hash = Hash.new
      i = 1
      while !User.where(teamid: i).blank?
        team_hash[team_name(i)] = team_score(i)
        i = i + 1
      end
      team_hash
    end

    def team_name(i)
      Team.where(id: i).pluck(:team_name)[0]
    end

    def sorted_team_hash()
      team_hash.sort_by { |id, score| score}
    end


    def team_score(teamid)
      score = 0
      number_users = 0
      @users = User.where(teamid: teamid)
      @users.each do |u|
        score = score + u.score
        number_users = number_users + 1
      end
      score / number_users
    end

  end
end

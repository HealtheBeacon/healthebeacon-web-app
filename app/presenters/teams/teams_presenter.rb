module Teams
  class TeamsPresenter

    def initialize(all_users)
      @all_users = all_users
    end

    def teamMembers(i)
      return unless i.to_i
      User.where(teamid: i)
    end

    def teams()
      teamarray = Array.new
      i = 1
      while !User.where(teamid: i).blank?
        teamarray[i] = teamScore(i)
        i = i + 1
      end
      teamarray
    end

    def teamScore(teamid)
      score = 0
      numUsers = 0
      @users = User.where(teamid: teamid)
      @users.each do |u|
        score = score + u.score
        numUsers = numUsers + 1
      end
      score / numUsers
    end

  end
end

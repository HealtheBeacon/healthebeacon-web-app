class User < ActiveRecord::Base
  validates :first_name,  presence: true
  validates :last_name,  presence: true
  validates :cernerid, presence: true, uniqueness: true
end

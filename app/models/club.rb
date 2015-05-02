class Club < ActiveRecord::Base
  has_many :users, through: :club_users
end

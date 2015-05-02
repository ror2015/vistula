class Club < ActiveRecord::Base
  mount_uploader :logo, ImageUploader
  has_many :users, through: :club_users
end

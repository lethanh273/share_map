class Share < ActiveRecord::Base
  belongs_to :user, class_name: "User"
  validates :receiver_id, presence: true
end

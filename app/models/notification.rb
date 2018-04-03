class Notification < ActiveRecord::Base
  belongs_to :user
  belongs_to :notified_by, class_name: 'User'
  belongs_to :post

  default_scope -> { order('created_at DESC') }

  validates :user_id, :notified_by_id, :post_id, :notice_type, presence: true

  def notification_time
    created_at.strftime("%m/%d/%y at %l:%M %p")
  end

  
end

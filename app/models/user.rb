class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  acts_as_voter
  acts_as_follower
  acts_as_followable

  mount_uploader :avatar, AvatarUploader
  mount_uploader :cover, AvatarUploader
  mount_uploader :avater, AvaterUploader
  
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :notifications, dependent: :destroy
  has_many :tlks, dependent: :destroy, :foreign_key => :sender_id

  validates_presence_of :name 

  def self.search(search)
    if search
      where(["name Like?","%#{search}%"])
    else
      all 
    end 
  end


  def use_time
    created_at.strftime("%m/%d/%y at %l:%M %p")
  end

  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  def options_for_seasons
    [['Male', 'male'], ['Female', 'female'], ['Not Specified', 'Not Specified']]
  end

  def options_for_rains
    [['University', 'University'], ['College', 'College'], ['High School', 'High School'], ['Other', 'Other']]
  end

  def options_for_boys
    [['Single', 'Single'], ['Married', 'Married']]
  end

  def options_for_girls
    [['University', 'University'], ['College', 'College'], ['High School', 'High School'], ['Other', 'Other']]
  end
  
  def age(date_of_birth)
    now = Time.now.utc.to_date
    now.year - date_of_birth.year - (date_of_birth.to_date.change(:year => now.year) > now ? 1 : 0)
  end

  def is_current_user?(user)
    user == current_user
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end


    
end
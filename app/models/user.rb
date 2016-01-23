class User < ActiveRecord::Base
has_secure_password
  validates :name,
            presence: true
  validates :phonenumber,
            presence: true
  validates :email,
            presence: true,
            uniqueness: true,
            format: {
              with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
            }
  def to_s
    "#{name} #{phonenumber}"
  end

 

  has_many :projects, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  has_many :friendships, dependent: :destroy
  has_many :friends, :through => :friendships, dependent: :destroy
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id", dependent: :destroy
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user, dependent: :destroy

 
  has_many :projectmemberships
  has_many :joined_projectmemberships, :class_name => "Projectmembership", :foreign_key => "pmember_id"
  has_many :joined_projects, :through => :joined_projectmemberships, :source => :project

  has_many :projtalks, dependent: :destroy

end

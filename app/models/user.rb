class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    attr_accessor :login
    validates :username,
  :presence => true,
  :uniqueness => {
    :case_sensitive => false
  }
  validate :validate_username
  has_many :topics
  has_many :replies
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      if login.start_with?('+')
        where(["phone = :value AND phone_confirm = :phone_confirm", { value: login.downcase, phone_confirm: true }]).first
      else
        where(["lower(email) = :value", { value: login.downcase }]).first
      end
    else
      where(conditions).first
    end
  end
  
  def admin?
	admin
  end
  
end

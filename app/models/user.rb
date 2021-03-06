class User < ActiveRecord::Base
	ratyrate_rater
	attr_accessor :remember_token #Used for remembering sessions
	  attr_accessible :name, :password, :password_confirmation, :email, :current_comp, :notifications
		validates :password_confirmation, :presence => true
		validates :name, presence: true, uniqueness: true
		validates :email, presence: true, uniqueness: true
		validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    has_secure_password
    before_save {|user| user.email.downcase!}
    has_many :computers
	# Returns a random token.

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def User.new_token
    SecureRandom.urlsafe_base64
  end

  # Remembers a user in the database for use in persistent sessions.
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  # Returns true if the given token matches the digest.
  def authenticated?(remember_token)
  	return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end
end

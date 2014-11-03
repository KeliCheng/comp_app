class User < ActiveRecord::Base
  #attr_accessible :name, :email, :password
  #has_secure_password
  has_many :computers
  def create 
		@user = User.new(user_params)
		if @user.save 
		else 
		end 
	end 

	private
	def user_params
		params.require(:user).permit(:name, :email, :password)
	end 
end

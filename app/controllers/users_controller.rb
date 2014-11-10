class UsersController < ApplicationController

	def edit
    @user = User.find(params[:id])
	end

	def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
        #sign_in @user
        flash[:success] = "Welcome to Build a Comp!"
        Computer.create(user_id:@user.id, price:0, hd_id:1, motherboard_id:1, ram_id:1,gpu_id:1,power_id:1,cpu_id:1)
        redirect_to @user
      else
        render 'new'
      end
    end

    def show
     @user = User.find(params[:id])
		
   end

   def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def user_params
   params.require(:user).permit(:name, :email, :password, :password_confirmation)
 end


end

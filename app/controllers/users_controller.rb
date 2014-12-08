class UsersController < ApplicationController
	before_action :logged_in_user, only: [:index, :edit, :update]
	def edit
    @user = User.find(params[:id])
	end

	def new
    @user = User.new
  end

	def index
		@users = User.all
		@computers = Computer.all
		@motherboard = Motherboard.all
		@cpu = Cpu.all
		@ram = Ram.all
		@gpu = Gpu.all
		@hd = Hd.all
		@power = Power.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
        #sign_in @user
        flash[:success] = "Welcome to Build a Comp!"
        Blacklist.create(user_id:@user.id, mobo_id:"1,", ram_id:"1,", gpu_id:"1,", cpu_id:"1,", hd_id:"1,", power_id:"1,").save
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

	def logged_in_user
		unless logged_in?
			flash[:danger] = "Please log in."
			redirect_to login_url
		end
	end

end

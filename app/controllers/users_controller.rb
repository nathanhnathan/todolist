class UsersController < ApplicationController

	def index
		@user_names = User.all.map(&:name)

	end

	def create
		@user = User.create(user_params)
  		redirect_to @user
	end

	def user_params
  		params.require(:user).permit(:fname, :lname, :email)
	end

	def show
			@user = User.find(params[:id])
			respond_to do |format|
      format.html
      format.json { render json: @user }
    end

  	end


end

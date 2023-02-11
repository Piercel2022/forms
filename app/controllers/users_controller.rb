class UsersController < ApplicationController
  # get post or /posts.json
  def index
    @users = User.all
  end

  # get users/new 
  def new
    @user = User.new
  end

  # post /users or /users.json
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html {redirect_to @user, notice: "User successfully saved"}
        format.json { render :show, status: :created, location: @user}
      else
        format.html {render :new, status: :unprocessable_entity}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
   @user = User.find(params[:id])
  end

  private

  def user_params
    params.permit(:vorname, :name, :email, :phone, :street, :city, :zipcode, :state, :gender, :meeting)
  end
end

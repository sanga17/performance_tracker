class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Performance Tracker!"
      redirect_to @user
       #set redirect to admin index page
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def index
    @users = User.all
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  def user_performance_parameter
    @user = User.find(params[:id])
    @performance_parameters = PerformanceParameter.all
    @user_user_performance_parameters = @user.performance_parameters
  end

  def update_user_performance_parameter
    @user = User.find(params[:id])
    @performance_parameters = PerformanceParameter.find(params[:performance_parameter_ids])
    @performance_parameters.each do |performance_parameter|
      UserPerformanceParameter.find_or_create_by(user_id: @user.id,
      performance_parameter_id: performance_parameter.id)
    end
    redirect_to user_performance_parameter_user_path(@user)
  end

  def user_task

  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :mobile_no, :password, :role)
  end

end

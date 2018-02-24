class Admin::PerformanceParametersController < ApplicationController
  def show
    @performance_parameter = PerformanceParameter.find(params[:id])
  end

  def new
    @performance_parameter = PerformanceParameter.new
  end

  def create
    @performance_parameter = PerformanceParameter.new(user_params)
    if @performance_parameter.save
      flash[:success] = "performance parameter added "
      redirect_to [:admin, @performance_parameter]
       #set redirect to admin index page
    else
      render 'new'
    end
  end

  def edit
    @performance_parameter = PerformanceParameter.find(params[:id])
  end

  def update
    @performance_parameter = PerformanceParameter.find(params[:id])
    if @performance_parameter.update_attributes(user_params)
      redirect_to [:admin, @performance_parameter]
    else
      render 'edit'
    end
  end

  def index
    @performance_parameters = PerformanceParameter.all
  end

  def destroy
    PerformanceParameter.find(params[:id]).destroy
    flash[:success] = "Performance parameter deleted"
    redirect_to admin_performance_parameters_url
  end

  private
    def user_params
      params.require(:performance_parameter).permit(:name, :active)
    end

end

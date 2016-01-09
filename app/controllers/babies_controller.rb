class BabiesController < ApplicationController
  def new
    @baby = Baby.new
    flash[:notice] = "new"

  end

  def create
    @baby = Baby.create(baby_params)
    render nothing: true
  end

  def edit
    @baby = Baby.find(params[:id])
      flash[:notice] = "edit"
  end

  def update
    render nothing: true
  end

  private
  def baby_params
    params.require(:baby).permit(:first_name, :last_name, :weight, :birth_date)
  end
end

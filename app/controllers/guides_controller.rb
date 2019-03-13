class GuidesController < ApplicationController
    # before_action :authenticate_user!
  before_action :set_guide, only: [:edit, :update]
  def edit
  end

  def update
    @guide.update(guide_params)
    redirect_to root_path
  end

  def index
    @guides = Guide.all
  end


  private

  def guide_params
    params.require(:guide).permit(:photo, :last_name, :first_name, :description)
  end
  def set_guide
    @guide = Guide.find(params[:id])
  end
end

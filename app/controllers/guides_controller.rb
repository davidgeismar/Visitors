class GuidesController < ApplicationController
    # before_action :authenticate_user!

  def index
    @guides = Guide.all
  end
end

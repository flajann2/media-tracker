class Api::V1::MediaManagementController < Api::BaseController

  def show
    @medium = Medium.find(params[:id])
  end

  def index
    @media = Medium.all
  end

  def add
  end

  def delete
  end

  def edit
  end
end

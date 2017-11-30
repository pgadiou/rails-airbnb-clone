class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @services = Service.where.not(latitude: nil)
    if params[:query_what].present? && params[:query_where].present?
      @services = Service.near(params[:query_where], 50, :order => false).where(category: params[:query_what])
    else
      @services = Service.all
    end
  end
end

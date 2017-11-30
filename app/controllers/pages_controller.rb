class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    max_distance = 10
    q_where = params[:query_where]
    q_what = params[:query_what]
    if q_where.present? && q_what.present?
      @services = Service.where.not(latitude: nil).near(q_where, max_distance, order: false).where(category: q_what)
    elsif q_what.present?
      @services = Service.where(category: q_what)
    elsif q_where.present?
      @services = Service.where.not(latitude: nil).near(q_where, max_distance, order: false)
    else
      @services = Service.all
    end
  end
end

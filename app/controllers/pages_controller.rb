class PagesController < ApplicationController

  def update_page_style
    if params[:id].present?
    @page = Page.find(params[:id])
     params[:color]= "#{params[:color]}"
    @page = @page.update(page_params)
    end
  end


  private
  def page_params
    params.permit(:title, :font, :color)
  end
end

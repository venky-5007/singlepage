class PagesController < ApplicationController
  def index
    begin
      @pages = Page.first
    rescue
      @pages = nil
    end
  end

  def show
    @page = Page.find(params[:id])
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    params[:page][:color]= "##{params[:page][:color]}"
    @page = Page.find(params[:id])
    @page.update(page_params)
    @page.save
    # redirect_to :action => :show, :id => @page.id
    redirect_to :back, :id => @page.id
  end


  private
  def page_params
    params.require(:page).permit(:title, :font, :color)
  end
end

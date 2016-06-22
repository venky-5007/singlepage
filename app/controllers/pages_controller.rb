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
    respond_to do |format|
      params[:page][:color]= "##{params[:page][:color]}"
        @page = Page.find(params[:id])
      if @page.update(page_params)
        format.html { redirect_to @page, :flash => { :success => 'App was successfully updated.' } }
        format.json { head :no_content }
        format.js {}
      else
        format.html { render action: "edit" }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end



  private
  def page_params
    params.require(:page).permit(:title, :font, :color)
  end
end

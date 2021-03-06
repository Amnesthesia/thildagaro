class PagesController < ApplicationController
  before_action :set_page, only: :show

  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all
  end

  def front

     if not Page.exists?(front: true)
         redirect_to projects_path
     else
         @page = Page.where(front: true).first

         render 'show'
     end
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:title, :content, :pictures_id, :published, :layout)
    end
end

# Scaffolding generated by Casein v5.1.1.5

module Casein
  class PagesController < Casein::CaseinController

    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]

    def index
      @casein_page_title = 'Sidor'
  		@pages = Page.order(sort_order(:title)).paginate :page => params[:page]
    end

    def show
      @casein_page_title = 'Visa sidor'
      @page = Page.find params[:id]
    end

    def new
      @casein_page_title = 'Lägg till en ny sida'
    	@page = Page.new
    end

    def create
      @page = Page.new page_params

      if @page.save
        flash[:notice] = 'Woo-fucking-hoo! Sida skapad ;)'

        if params[:pictures]
            params[:pictures].each do |picture|
                pic = @page.pictures.new(path: picture)
                puts(pic.path)
                pic.save
                puts("Picture should now be %s" % picture)
            end
        end

        redirect_to casein_pages_path
      else
        flash.now[:warning] = 'Uh, shit. Det blev nåt problem :x'
        render :action => :new
      end
    end

    def update
      @casein_page_title = 'Uppdatera sida'

      @page = Page.find params[:id]

      if @page.update_attributes page_params
          if params[:pictures]
              params[:pictures].each do |picture|
                  pic = @page.pictures.new(path: picture)
                  puts(pic.path)
                  pic.save
                  puts("Picture should now be %s" % picture)
              end
          end

          if params[:captions]
              params[:captions].each do |cap|
                  pic = @page.pictures.find cap.shift

                  pic.update(caption: cap.shift.to_s) unless pic.nil?
              end
          end
        flash[:notice] = 'Sidan har uppdaterats'
        redirect_to casein_page_path(@page)
      else
        flash.now[:warning] = 'Oh, dang! Det blev nåt snesteg när sidan skulle uppdateras'
        render :action => :show
      end
    end

    def destroy
      @page = Page.find params[:id]

      @page.destroy
      flash[:notice] = 'Sidan har TERMINERATS. BAM.'
      redirect_to casein_pages_path
    end

    private

      def page_params
        params.require(:page).permit(:title, :content, :published, :layout, :pictures => [], :captions => [])
      end

  end
end

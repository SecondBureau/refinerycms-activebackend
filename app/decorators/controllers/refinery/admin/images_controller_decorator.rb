  Refinery::Admin::ImagesController.class_eval do
    
    def index
      respond_to do |format|
          format.html do
            search_all_images if searching?
            paginate_all_images
            render_partial_response?
          end
          format.json do
            @images = Refinery::Image.all
          end
        end
    end
  
  end


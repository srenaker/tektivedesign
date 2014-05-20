class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def setup_page(type)
    
    @image_path = type
    
    params['image_num'] ? @image_num = params['image_num'] : @image_num = 0
    
    @image_array = get_images("app/assets/images/#{@image_path}/#{@item}")
    @thumbnail_array = get_images("app/assets/images/#{@image_path}/#{@item}/thumbnails")
    
    @projects = Project.where(:type => type).sort
    @selected_project = Project.where(:_id => @item).first
    @big_image_loc = "#{@image_path}/#{@item}/#{@image_array[@image_num.to_i]}"
    
  end
end

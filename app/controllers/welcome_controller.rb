class WelcomeController < ApplicationController

  def index
    
  end
  
  def residential
    
    params['item'] ? @item = params['item'] : @item = 'redwood_kitchen'

    setup_page('residential') 
    
  end
  
  def passive_house
    @image_path = 'passive_house'
    
    params['item'] ? @item = params['item'] : @item = 'passive_house'
    
  end
  
  def studio
    params['item'] ? @item = params['item'] : @item = 'network_house'
    setup_page('studio')
  end
  
  def workshop
    params['item'] ? @item = params['item'] : @item = 'lampshade'
    setup_page('workshop')
  end
  
  def about
    
  end
  
  
  def get_images(loc)
    arr = []
    Dir.foreach(loc) do |item|
      next if item == '.' or item == '..'
      arr << item
    end
    return arr
  end


end

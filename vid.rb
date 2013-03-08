class Vid < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :vi
  attr_accessible :pi
  
  has_attached_file :pi, :whiny => false, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "logo.png"  
  has_attached_file :vi, :whiny => false,:styles => { 
    :medium => { :geometry => "640x480", :format => 'flv' },
    :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10 }
  } ,   :processors => [:ffmpeg]
end

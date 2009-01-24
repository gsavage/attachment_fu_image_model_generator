class <%= class_name %>Image < ActiveRecord::Base
  has_attachment  :storage => :file_system, 
                  :max_size => 1.megabytes,
                  :content_type => :image,
                  :thumbnails => { :thumb => '100x100>', :tiny => '40x40>' }

  validates_as_attachment
  
  belongs_to :<%= file_name %>
end
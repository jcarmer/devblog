class Image < ActiveRecord::Base
  attr_accessible :alt_text, :media

  has_attached_file :media, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end

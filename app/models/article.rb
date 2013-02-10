class Article < ActiveRecord::Base
  attr_accessible :title, :category_id, :content, :priority, :image_id

  belongs_to :category
  belongs_to :image

  has_many :article_comments
end

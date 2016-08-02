class Post < ActiveRecord::Base
  # Remember to create a migration!
  has_many :post_tag
  has_many :tags, :through => :post_tag 
end

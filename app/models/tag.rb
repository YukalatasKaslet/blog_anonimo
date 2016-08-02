class Tag < ActiveRecord::Base
  # Remember to create a migration!
  has_many :post_tag
  has_many :posts, :through => :post_tag
end

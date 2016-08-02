class PostTags < ActiveRecord::Base
  # Remember to create a migration!
  #Para la tabla intermedia
  belongs_to :post
  belongs_to :tag
end

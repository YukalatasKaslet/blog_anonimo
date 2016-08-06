get '/tags' do
  @tags = Tags.all
  erb :tags
  
end

#Read
get '/tag/:tag' do
  @tag = Tag.find(params[:tag])
  erb :tag
end
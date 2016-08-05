get '/tags' do
  @tags = Tags.all
  erb :tags
  
end

#Read
get '/tag/:id' do
  tag = Tag.find(params[:id])  
  redirect to ("/tag/#{tag.id}")
end
#Read
post '/tag/:id' do
  @tag = Tag.find(params[:id])
  erb :tag
end
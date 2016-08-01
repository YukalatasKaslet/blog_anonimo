


get '/post/:id/edit' do
  #edit
  @post = Post.find(params[:id]) 
  erb :edit
end


get '/post/:id' do
  #read
  @post = Post.find(params[:id])  
  erb :post 
end


put '/post/:id' do
  @post = Post.find(params[:id])
  @post.update(params[:post])
  erb :post

end

post '/post' do
  #create
  @post = Post.create(params[:post])
  erb :post
end

get '/show' do
  @post = Post.all
  erb :show
end
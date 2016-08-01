post '/post' do
  @post = Post.create(params[:post])
  erb :show
end


get '/post/:id' do
  @post = Post.find(params[:id])  
  erb :post 
end




#CREATE
post '/post' do
  #no conviene Post.create por que hay que
  #verificar que se salve y hay que asociar
  #params = {:tags => {"tag"=>"tijiritillo, mundirijillo"}, :post => {"title"=>"hola", "body"=>"mundillo"} }
  post = Post.new(params[:post])

  tags = params[:tags]["tag"]
  tags = tags.split(/[^a-zA-Z0-9]/)
  tags = tags.delete_if{|element| element == ""}

  t = Tag.all

  post.save
    tags.each do |tag|
        post.tags << Tag.find_or_create_by(tag: tag)
    end
  p "*" * 50
  redirect to ("/post/#{post.id}") #esto hace un POST?
end

#READ
get '/post/:id' do  
  @post = Post.find(params[:id])
  erb :post 
end

#READ
#post '/post/:id' do
#  redirect to ("/post/#{params[:id]}")
#end

#UPDATE
put '/post/:id' do
  @post = Post.find(params[:id])
  @post.update(params[:post])
  erb :post

end

#DELETE
delete '/post/:id' do
  post = Post.find(params[:id])
  post.destroy

  redirect to ('/show')
end

#EDIT
get '/post/:id/edit' do
  @post = Post.find(params[:id]) 
  erb :edit
end

#Show all post
get '/show' do
  @post = Post.all #esto es un arreglo (ejemplo)
          #<ActiveRecord::Relation [#<Post id: 1, title: "hola", body: "mundillo">]>
  erb :show
end
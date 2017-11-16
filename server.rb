require 'sinatra'

get '/' do
  redirect to '/home'
end

get '/gallery' do
  redirect to '/portfolio'
end

get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cars', 'fashion', 'music', 'writing', 'anime']
  erb :about_me
end

get '/favorites' do
  @fav_links = ['https://twitter.com/', 'https://soundcloud.com/', 'https://www.youtube.com/', 'https://www.tumblr.com/', 'https://www.google.com/']
  erb :favorites
end

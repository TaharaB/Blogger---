require 'sinatra'
require 'sinatra/reloader'
require 'date'

def Datenow(timewhich)
	if timewhich
		time1 = Time.new(1996,2,2)
		return "Current Time : " + time1.inspect
	else
		time2 = Time.now
		return "Current Time : " + time2.inspect
	end
end

get "/datenow" do  
	Datenow(false)
end

get "/hello/:name" do
 params[:name]
end

get "/form" do
	erb :form
end

post '/form' do  
  "You said '#{params[:message]}'"  
end

get '/secret' do  
      erb :secret  
end

post '/secret' do  
      params[:secret].reverse  
end 
get '/decrypt/:secret' do  
      params[:secret].reverse  
end    

get "/more/*" do
	params[:splat]
end

get "/" do
	"Hello, world"
end

get "/about" do
	"Welcome to my webpage"
end

not_found do  
      status 404  
      'not found'  
end

not_found do  
      halt 404, 'page not found'  
end    
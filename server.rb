module App

  class Server < Sinatra::Base
	set :method_override, true

  get "/" do 
  	erb :index
  end

  get "/client_list" do
  	@clients = Client.all
  	erb :client_list
  end	

  




  end
end	
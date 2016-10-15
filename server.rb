module App

  class Server < Sinatra::Base
	set :method_override, true

  get "/" do 
  	erb :index
  end

  get "/clients" do
  	@clients = Client.all
  	erb :client_list
  end	

  
  get "/clients/:id" do
  	id = params[:id]
  	@client = Client.find(id)
  	erb :client_view
  end


  end

end	
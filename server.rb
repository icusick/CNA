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

  get "/new_client" do
  	erb :new_client
  end

  post "/clients" do 
    newClient = Client.create({organization: params["organization"], individual: params["individual"]})
    redirect to "/clients"
  end



  end

end	
module App

  class Server < Sinatra::Base
	set :method_override, true
  enable :sessions

  get "/" do 
  	erb :index
  end

  get "/login" do
    @user = User.find(session[:user_id]) if session[:user_id]
    erb :login
  end

  post "/sessions" do 
    user = User.find_by({name: params[:name]}).try(:authenticate, params[:password])
    if user
      session[:user_id] = user.id
      redirect to "/"
    else
      redirect to "/login"
    end
  end

  delete "/sessions" do 
    session[:user_id] = nil 
    redirect to "/"
  end

  get "/clients" do
  	@clients = Client.all.order(:organization)
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
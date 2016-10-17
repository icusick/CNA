require_relative "config"

Client.destroy_all();
Product.destroy_all();
User.destroy_all();

fill_clients = [
	{organization: "Cuisinart", individual: "Bob", legislation: "yes", product_id: 1, committees: "yes", legislators: "yes", mobile_access: "yes"},
	{organization: "tufts and needles", individual: "Leslie", legislation: "no", product_id: 2, committees: "no", legislators: "yes", mobile_access: "yes"},
	{organization: "Randall's Liquor Heaven", individual: "Randy", legislation: "no", product_id: 3, committees: "yes", legislators: "yes", mobile_access: "yes"},
]

fill_products = [
	{kind: "one state"},
	{kind: "regional"},
	{kind: "national"}
]

fill_users = [
	{name: "Isabel", password: "08cusicki"}
]

Client.create(fill_clients)
Product.create(fill_products)
User.create(fill_users)
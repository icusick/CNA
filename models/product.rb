class Product < ActiveRecord::Base
	has_many :clients
end
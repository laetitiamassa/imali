class Client < ActiveRecord::Base
	has_many :matters, dependent: :destroy
end

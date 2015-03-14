class Client < ActiveRecord::Base
	has_many :matters, dependent: :destroy
	belongs_to :user
end

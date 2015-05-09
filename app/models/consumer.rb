class Consumer < ActiveRecord::Base
	has_many :vital_signs
	has_many :provider,
	through :vital_signs
end

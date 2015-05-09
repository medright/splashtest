class Provider < ActiveRecord::Base
	has_many :vital_signs
	has_many :consumers,
	through :vital_signs

end

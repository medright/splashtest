class VitalSign < ActiveRecord::Base
	belongs_to :consumer
	belongs_to :provider
end

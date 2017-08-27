class Event < ApplicationRecord
	belongs_to :venue, optional: true
	belongs_to :band, optional: true
end

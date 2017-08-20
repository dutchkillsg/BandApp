class EventsController < ApplicationController
	def index 
		@events = Event.all
		#should I store my venues in the index to show its values?
		@venues = Venue.where(params[:id])
	end

	def edit 
		@events = Event.find(params[:id])
		puts @events.inspect
	end

	def update 
		@events = Event.find(params[:id])
		@events.update_attributes(name: params[:event][:name], date: params[:event][:date], alcohol_served: params[:event][:alcohol_served], venue_id: params[:event][:venue_id], band_id: params[:event][:band_id])
		redirect_to action: 'index'
	end

	def show 
		@event = Event.find(params[:id])
		venue_id = Event.select(:venue_id).find(params[:id])
		@venue = Venue.find(params[:id])

	end

	def destroy
		@events=Event.find(params[:id])
		@events.destroy
		redirect_to action: 'index'
	end

	def new 
		@Events = Event.new
	end

	def create
		@Events = Event.create(name: params[:event][:name], date: params[:event][:date], alcohol_served: params[:event][:alcohol_served], venue_id: params[:event][:venue_id], band_id: params[:event][:band_id])
		@Events.save
		redirect_to action: 'index'
	end

	
end

class VenuesController < ApplicationController
	def index
		@venues = Venue.all
	end

	def edit
		@venues = Venue.find(params[:id])
		puts @venues.inspect
	end

	def update
		@venues = Venue.find(params[:id])
		@venues.update_attributes(name: params[:venue][:name], city: params[:venue][:city], state: params[:venue][:state], family_friendly: params[:venue][:family_friendly], image: params[:venue][:image])
		
		redirect_to action: 'show'
	end

	def show
		@venue = Venue.find(params[:id])
		event_id = Venue.select(:event_id).find(params[:id])
		@event = Event.find(params[:id])
	end

	def destroy
		@venues=Venue.find(params[:id])
		@venues.destroy
		redirect_to action: 'index'
	end

	def new 
		@Venues = Venue.new
	end

	def create
		@venues = Venue.create(name: params[:venue][:name], city: params[:venue][:city], state: params[:venue][:state], family_friendly: params[:venue][:family_friendly], image: params[:venue][:image])
		@venues.save
		redirect_to action: 'index'
	end


end

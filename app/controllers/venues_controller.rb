class VenuesController < ApplicationController
	def index
		@venues = Venue.all
	end

	def edit
		@venues = Venue.find(params[:id])
		puts @venues.inspect
	end
#update works now work on new and create page 
	def update
		@venues = Venue.find(params[:id])
		@venues.update_attributes(name: params[:venue][:name], city: params[:venue][:city], state: params[:venue][:state], family_friendly: params[:venue][:family_friendly])
		
		redirect_to action: 'index'
	end

	def show
		redirect_to action: 'index'
	end

	def new 
		@Venues = Venue.new
	end

	def create
		@venues = Venue.create(name: params[:name], city: params[:city], state: params[:state], family_friendly: params[:family_friendly])
		redirect_to action: 'index'
	end
end

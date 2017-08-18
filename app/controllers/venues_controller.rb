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
		@venues = Venue.where(params[:id])
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
		@venues = Venue.create(name: params[:venue][:name], city: params[:venue][:city], state: params[:venue][:state], family_friendly: params[:venue][:family_friendly])
		@venues.save
		redirect_to action: 'index'
	end


end

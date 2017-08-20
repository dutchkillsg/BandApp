class BandsController < ApplicationController
	def index 
		@bands = Band.all
	end

	def edit
		@bands = Band.find(params[:id])
		puts @bands.inspect
	end

	def update 
		@bands = Band.find(params[:id])
		@bands.update_attributes(name: params[:bands][:name], genre: params[:band][:genre], image: params[:band][:image], explicit_lyrics: params[:band][:explicit_lyrics])
	end

	def show
		@bands = Band.find(params[:id])
	end

	def destroy
		@bands = Band.find(params[:id])
		@bands.destroy
		redirect_to action: 'index'
	end

	def new
		@bands = Band.new
	end

	def create
		@bands = Band.create(name: params[:band][:name], genre: params[:band][:genre], image: params[:band][:image], explicit_lyrics: params[:band][:explicit_lyrics])
		@bands.save
		redirect_to action: 'index'
	end


end

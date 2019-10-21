class Admin::DisksController < ApplicationController
	layout false
	def  index
		@DiskNo = params[:disk_no]
		if params[:cmd] == 'add_disk'
			render :disk
		end
		if params[:cmd] == 'add_song'
			@song = RecordMusic.new
			render :song
		end
	end
end

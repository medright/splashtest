class NotesController < ApplicationController
	before_action :require_signin

	def index
		@note = Note.all
	end

	def show
		@note = Note.find(params[:id])
	end

	def edit
		@note = Note.find(params[:id])
	end

	def update
		@note = Note.find(params[:id])
		@note.update(note_params)
		redirect_to @note
	end

	def new
		@note = Note.new
	end

	def create
		@note = Note.new(note_params)
		@note.save
		redirect_to @note
	end

	def destroy
		@note = Note.find(params[:id])
		@note.destroy
		redirect_to notes_url
	end


	private

	def note_params
		params.require(:note).permit(:service, :subjective, :objective, :assessment,
		 :plan, :ordering_provider, :patient, :user_id)
	end
end

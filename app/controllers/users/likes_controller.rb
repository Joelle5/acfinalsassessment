class Users::LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_note

  def create
    note = Note.find(params[:note_id])
        current_user.like(note)
        redirect_to users_notes_path
  end

  def destroy
    Like.find_by(user_id: current_user.id, note: @note).destroy
    redirect_to users_notes_path
  end

  private

    def set_note
      @note = Note.find(params[:note_id])
    end
end

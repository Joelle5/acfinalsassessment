class Users::NotesController < ApplicationController
  before_action :authenticate_user!
  def index
    @notes = current_user.notes.all
    @note = Note.new
  end

  def new
  end

  def create
    @note = current_user.notes.new(note_params)
    if @note.save
      flash[:notice] = "Note is added!"
      redirect_to users_notes_path
    else
      redirect_to users_notes_path
    end
  end

  def show
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      flash[:notice] = "Note have been changed!"
      redirect_to users_notes_path
    else
      render :edit
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    flash[:alert] = "Deletion completed!!"
    redirect_to users_notes_path



  end

  private
  def note_params
    params.require(:note).permit(:title, :body, :user_id)
  end
end

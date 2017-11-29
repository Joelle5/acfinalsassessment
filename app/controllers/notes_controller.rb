class NotesController < ApplicationController
  def index
    @notes = Note.all
    @note = Note.new
  end

  def new

  end

  def create
    @note = Note.new(note_params)
    if @note.save
      flash[:notice] = "Note is added!"
      redirect_to notes_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  private
  def note_params
    params.require(:note).permit(:title, :body)
  end
end

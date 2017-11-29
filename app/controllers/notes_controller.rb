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
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      flash[:notice] = "Note have been changed!"
      redirect_to notes_path
    else
      render :edit
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    flash[:alert] = "Deletion completed!!"
    redirect_to notes_path



  end

  private
  def note_params
    params.require(:note).permit(:title, :body)
  end
end

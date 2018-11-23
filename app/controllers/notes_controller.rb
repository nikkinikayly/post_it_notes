class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @notes = Note.find(params[:id])
  end

  def new
    @notes = Note.new
  end

  def create
    @notes = Note.new(notes_params)
    if @notes.save
      redirect_to notes_path
    else
      render :new
    end
  end

  private

  def notes_params
    params.require(:page).permit(:title, :boy)
  end

end

class PagesController < ApplicationController
  def index
    @notes = Note.all
  end
end

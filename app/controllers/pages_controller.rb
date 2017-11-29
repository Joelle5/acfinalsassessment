class PagesController < ApplicationController

  def index
    @notes = Note.all
    @users = User.all
  end
end

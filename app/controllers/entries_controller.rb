class EntriesController < ApplicationController
  def index
    @entries = Entry.all.order('date_taken desc')
  end
  def show
    @entry = Entry.find(params[:id])
  end
  def new
  end
  def create
    @entry = Entry.create(params[:entry])
    redirect_to "/entries"
  end
  def edit
    @entry = Entry.find(params[:id])
  end
  def update
    @entry = Entry.find(params[:id])
    @entry.update(params[:entry])
    redirect_to "/entries/#{@entry.id}"
  end
  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to "/entries"
  end
end

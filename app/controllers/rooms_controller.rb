class RoomsController < ApplicationController
  def index
    # I don't think we need to do anything with a model in here, just give
    # html
    @rooms = Room.all
    @room = Room.new
  end

  def new
    # i want to get all unique tags
    @room = Room.new
    @tags = Thing.tags
  end

  def create
    code = "room#{Room.all.size + 1}"
    @room = Room.create(code: code, tag: params[:tag], num_users: params[:num_users])
    redirect_to root_path # this needs change
  end

  def room_things
    @room = Room.find(params[:id])
    @things = @room.get_things # things that match room tag name
  end
end

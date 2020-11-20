class RoomsController < ApplicationController
  def index
    # I don't think we need to do anything with a model in here, just give
    # html
    @rooms = Room.all
  end

  def new
    # i want to get all unique tags
    @room = Room.new
    @tags = Thing.tags
  end

  def create
    code = "room#{Room.all.size + 1}"
    @room = Room.create(code: code, tag: params[:tag], num_users: params[:num_users])
  end
end

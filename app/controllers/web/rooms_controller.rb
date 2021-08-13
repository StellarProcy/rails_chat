class Web::RoomsController < Web::ApplicationController
  def index
    @room = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      flash[:notice] = 'User was created!'
    else
      flash[:notice] = 'Please try again'
    end
  end
  
  def show

  end
end

class Users::EventsController < ApplicationController
  
  def create
      event = Event.new(event_params)
      event.save
      @events = Event.where(user_id: current_user.id)
  end
  
  def update
      event = Event.find(params[:id])
      event.update(event_params)
      @events = Event.where(user_id: current_user.id)
  end

  def destroy
      @user = User.find(params[:id])
      event = Event.find(params[:id])
      event.destroy
  end
  
  private
  
  def event_params
      params.require(:event).permit(:title, :body, :end, :user_id, :body)
  
end

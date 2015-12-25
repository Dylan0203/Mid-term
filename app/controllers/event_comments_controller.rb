class EventCommentsController < ApplicationController

  before_action :set_event

  def index
    @comment = Comments.new
    @comments = @event.comments
  end


  def create
    @comment = @event.comments.build(comment_params)
    @comment.user = current_user
    @comment.save

    redirect_to event_path(@event)
  end

  def destroy
    @comment = @event.comments.find(params[:id])
    @comment.destroy
    redirect_to event_path(@event)
  end

private

  def comment_params
    params.require(:comment).permit(:reply)
  end

  def set_event
    @event = Event.find(params[:event_id])
    
  end

end

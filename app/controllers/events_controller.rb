class EventsController < ApplicationController

  before_action :authenticate_user!, :except => [:index]

  before_action :set_event, :only => [ :show, :edit, :update, :destroy ]


  def index
    @events = Event.page(params[:page]).per(5)
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.new(event_params)
      if @event.save
      redirect_to :action => :index
      flash[:notice] = "訊息已成功發佈"
    else
      render :action => :new
    end
  end

  def show
    @page_title = @event.topic
    @comments = @event.comments
    @comment = Comment.new
  end

  def update
    if @event.update(event_params)
      redirect_to :action => :show, :id => @event
      flash[:notice] = "訊息已成功更新"
    else
      render :action => :edit 
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path
    flash[:alert] = "訊息已成功刪除"
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:topic, :content,:event_id, :category_ids => [])
  end
end

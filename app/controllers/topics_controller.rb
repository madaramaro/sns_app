class TopicsController < ApplicationController
  def index
    @title = params[:title]
    if @title.present?
      @topics = Topic.where('title LIKE?',"%#{@title}%")
    else
      @topics = Topic.all
    end 
    
     render :index
  end
  
  def new
    @topic = Topic.new
    render :new
  end

  def create
    @topic = Topic.new(topic_params)
  
    if @topic.save
      redirect_to topics_path, notice: '登録しました'
    else
      render :new, status: :unprocessable_entity
    end
  end
  

  def edit
    @topic = Topic.find(params[:id])
    render :edit
  end

  def update
    @topic = Topic.find(params[:id])
    
    if @topic.update(topic_params)
    　redirect_to topics_path, notice: '更新しました'
    else
      render :edit, status: :unprocessable_entity
    end
  end
    
  private
  
  def topic_params
    params.require(:topic).permit(:body)
  end
end

class ArticalsController < ApplicationController

  def index
    @articals = Artical.all
  end


  def show
    @artical = Artical.find(params[:id])
  end

  def update
    artical = Artical.find(params[:id])
    artical.title = params[:content][:page_title][:value]
    artical.content = params[:content][:page_content][:value]
    artical.save!
    render text: ''
  end
end

class ResourcesController < ApplicationController

  def index
    @tools = Tool.all
    @resources = Resource.all

    respond_to do |format|
      format.html
      format.json { render json: @tools }
    end
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = current_user.resources.build(strong)
    @tool = Tool.find(params[:id])
    if @resource.save
      @tool.resources << @resource
      redirect_to tool_path
    else
      flash[:notice] = 'Please fix the errors as marked.'
      render 'new'
    end
  end

  def show
    @tool = Tool.find(params[:id])
    @resource = Resource.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @tool.resource }
    end
  end

  def edit
    @resource = Resource.find(params[:id])
  end

  def update
    @resource = Resource.find(params[:id])
    if @resource.update(strong)
      redirect_to root_path
    else
      flash[:notice] = 'Please fix the erros as marked.'
      render 'edit'
    end
  end

  def destroy
    @resource = Resource.find(params[:id])
    @resource.destroy
    flash[:notice] = 'Resource has been destroyed.'
    redirect_to root_path
  end

private
  def strong
    params.require(:resource).permit(:name, :summary, :tool_id, :user_id, :cat_id, :url)
  end
end

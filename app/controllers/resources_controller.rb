class ResourcesController < ApplicationController

  before_filter :get_tool

  def get_tool
    @tool = Tool.find(params[:tool_id])
  end

  def index
    @resources = @tool.resources

    respond_to do |format|
      format.html
      format.json { render json: @tools }
    end
  end

  def new
    @resource = Resource.new(params[:strong])
  end

  def create
    @resource = Resource.new
    if @resource.save
      @tool.resource = params[:tool_id]
      @tool.resources << @resource
      redirect_to tool_resource_path(@tool)
    else
      flash[:notice] = 'Please fix the errors as marked.'
      render 'new'
    end
  end

  def show
    @resource = @tool.resources.find(params[:id])

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
    params.require(:resource).permit(:name, :summary, :url)
  end

  def tool_params
    params.require(:tool).permit(:id)
  end
end

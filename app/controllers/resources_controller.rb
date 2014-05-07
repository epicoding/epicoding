class ResourcesController < ApplicationController

  before_filter :get_tool

  def get_tool
    @tool = Tool.find(params[:tool_id])
  end

  def index
    @resources = @tool.resources
  end

  def new
    @resource = Resource.new
  end

  def create
    @tool = Tool.find(params[:tool_id])
    @resource = Resource.new(params[:strong])
    @resource = @tool.resources.new(params[:strong])
    if @resource.save
      redirect_to [@tool, @resource],
      flash[:notice] = 'Resource successfull submitted.'
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

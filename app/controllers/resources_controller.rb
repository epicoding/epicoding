class ResourcesController < ApplicationController
  respond_to :html, :xml, :json

  before_filter :get_tool

  def get_tool
    @tool = Tool.find(params[:tool_id])
  end

  def index
    @resources = @tool.resources
  end

  def new
    @tool = Tool.find(params[:tool_id])
    @resource = @tool.resources.build
    respond_with(@resource)
  end

  def create
    @tool = Tool.find(strong[:tool_id])
    @resource = @tool.resources.build(strong)
    if @resource.save
      redirect_to [@tool, @resource]
      flash[:notice] = 'Resource successfully submitted.'
    else
      flash[:notice] = 'Please fix the errors as marked.'
      render 'new'
    end
  end

  def show
    @tool = Tool.find(params[:tool_id])
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
    params.require(:resource).permit(:name, :summary, :url, :tool_id, :user_id)
  end
end

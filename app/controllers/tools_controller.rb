class ToolsController < ApplicationController

  def index
    respond_to do |format|
      format.html { @tools = Tool.all }
      format.js { @tools = Tool.basic_search(params[:search])}
    end
  end

  def new
    @tool = Tool.new
  end

  def create
    @user = User.find(params[:id])
    @tool = Tool.new
    if @tool.save
      respond_to do |format|
        format.html do
          current_user.tools << @tool
          flash[:notice] = 'Tool Created.'
          redirect_to tool_path
        end
        format.json { render :json => @tool, :status => 201 }
      end
    else
      respond_to do |format|
        format.html do
          flash[:notice] = 'Please fix the errors as marked.'
          render 'new'
        end
        format.json { render :json => @tool.errors, :status => 422 }
        render 'new'
      end
    end
  end

  def show
    @tool = Tool.find(params[:id])
  end

  def edit
    @tool = Tool.find(params[:id])
  end

  def update
    @tool = Tool.find(params[:id])
    if @tool.update(tool_params)
      redirect_to tool_path
    else
      render 'edit'
    end
  end

private
  def tool_params
    params.require(:tool).permit(:name, :summary, :url)
  end
end

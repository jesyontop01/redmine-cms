class UserProjectsController < ApplicationController
  before_action :set_user_project, only: [:show, :edit, :update, :destroy]

  # GET /user_projects
  def index
    @user_projects = UserProject.all
  end

  # GET /user_projects/1
  def show
  end

  # GET /user_projects/new
  def new
    @user_project = UserProject.new
  end

  # GET /user_projects/1/edit
  def edit
  end

  # POST /user_projects
  def create
    @user_project = UserProject.new(user_project_params)

    if @user_project.save
      redirect_to @user_project, notice: 'User project was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /user_projects/1
  def update
    if @user_project.update(user_project_params)
      redirect_to @user_project, notice: 'User project was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /user_projects/1
  def destroy
    @user_project.destroy
    redirect_to user_projects_url, notice: 'User project was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_project
      @user_project = UserProject.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_project_params
      params.require(:user_project).permit(:user_id, :project_id)
    end
end

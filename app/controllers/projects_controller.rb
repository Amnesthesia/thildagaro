class ProjectsController < ApplicationController
  before_action :set_project, only: :show

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.order(order: :asc)
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
      @all_projects = Project.order(order: :asc)

      @next = @all_projects[@all_projects.index(@project) + 1]
      @prev = @all_projects[@all_projects.index(@project) - 1]

      @next = Project.first if Project.last.id < @next.id
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:title, :subtitle, :content, :pictures_id, :client, :client_url, :completion_date, :published)
    end
end

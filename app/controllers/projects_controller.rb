require "pry"
class ProjectsController < ApplicationController
   
    get "/projects" do 
        serialize(Project.all)
      end

    get "/projects/:id" do
        project = Project.find(params[:id])
        serialize(project)
    end


    post "/projects" do
        #serialize(Project.create(project_params))
        car = Car.find_by(name: params[:search_car])
        project = Project.create(
            title: params[:title],
            time_required: params[:time_required],
            tools_required: params[:tools_required],
            description: params[:description],
            created_at: params[:created_at],
            updated_at: params[:updated_at],
            car: car
        )
        project.to_json(methods: [:car])
    end

    patch "/projects/:id" do
        project = Project.find(params[:id])
        project.update(project_params)
        serialize(project)
    end

    delete "/projects/:id" do
        project = Project.find(params[:id])
        project.destroy 
        serialize(project)
    end
    
    private
    def project_params
        allowed_params = %w(title time_required tools_required description created_at updated_at search_car car_id)
        params.select {|param,value| allowed_params.include?(param)}
    end

    def serialize(project)
        project.to_json
    end
end


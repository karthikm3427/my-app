class Api::V1::SchoolsController < Api::V1::BaseController

  def index
    schools = School.all
    render json: {status: "ok", schools: schools.as_json}.to_json, status: 200
  end
  
  def create
    school = School.new(school_params)
    if school.save
      render json: {status: "ok", message: "created!"}.to_json, status: 200
    else
      render json: {status: "error", message: school.errors.full_messages.first}.to_json, status: 500
    end
  end
  
  private
  def school_params
    params.permit(:name, :address, :started_on)
  end

end

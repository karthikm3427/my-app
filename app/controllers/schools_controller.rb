class SchoolsController < ApplicationController
  
  #http_basic_authenticate_with name: "karthik", password: "123456"
  before_action :load_school, only: [:edit, :update, :show, :destroy]

  layout 'new_layout', except: [:index, :new]
  
  def index
    @schools = School.all
    respond_to do |format|
      format.html {  } #redirect_to root_url, alert: "You're stuck here!" }
      format.js   { render layout: false }
      format.xml  { render xml: @schools }
      format.json { render json: @schools }
    end
  end
  
  def new
    @school = School.new
#    send_file("#{Rails.root}/README.md",
#              filename: "README.md",
#              type: "text/markdown")
  end
  
  def create
    @school = School.new(school_params)
    if @school.save
      UserMailer.welcome_email("karthik.mchi@gmail.com").deliver_now
      redirect_to schools_path, notice: "Success!"
    else
      render action: "new"
    end
  end
  
  def edit
  end
  
  def update
    if @school.update(school_params)
      redirect_to schools_path, notice: "Updated!"
    else
      render action: "edit"
    end
  end
  
  def show
    render layout: "other_layout"
  end
  
  def destroy
    @school.destroy
    redirect_to schools_path, notice: "Removed!"
  end

  
 private
  def load_school
    Rails.logger.debug "\n...I'm in.\n"
    @school = School.find(params[:id])
  end 
  
   def school_params
    params.require(:school).permit(:name, :address)
  end 

end

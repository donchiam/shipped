class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /assignments
  # GET /assignments.json
  def index
    @assignments = Assignment.all
  end

  # GET /assignments/1
  # GET /assignments/1.json
  def show
    @assignment = Assignment.find(params[:id])
  end

  # GET /assignments/new
  def new
    @assignment = Assignment.new
  end

  # GET /assignments/1/edit
  def edit
    set_assignment
  end

  # POST /assignments
  def create
  @assignment = Assignment.new(assignment_params)
    @assignment.user = current_user
      if @assignment.save
        redirect_to assignments_path, notice: 'Assignment was successfully created.'
      else
        render :new
      end
  end
  # POST /assignments.json
#  def create
#    @assignment = Assignment.new(assignment_params)
#
#    respond_to do |format|
#      if @assignment.save
#        format.html { redirect_to @assignment, notice: 'Assignment was successfully created.' }
#        format.json { render :show, status: :created, location: @assignment }
#      else
#        format.html { render :new }
#        format.json { render json: @assignment.errors, status: :unprocessable_entity }
#      end
#    end
#  end

  # PATCH/PUT /assignments/1
  # PATCH/PUT /assignments/1.json
  def update
    respond_to do |format|
      if @assignment.update(assignment_params)
        format.html { redirect_to @assignment, notice: 'Assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignment }
      else
        format.html { render :edit }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end


def add_assignment
  @job = Job.find(params[:job_id])
  @boat = Boat.find(params[:job][:boat_id])
  @job.boats << @boat

end


  # DELETE /assignments/1
  # DELETE /assignments/1.jon
  def destroy
    @assignment.destroy
    respond_to do |format|
      format.html { redirect_to assignments_url, notice: 'Assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment
      @assignment = Assignment.find(params[:id])
      @boat_used = Boat.find_by(id: params[:boat_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_params
      params.require(:assignment).permit(:job_id, :boat_id, :containers)
    end
  end




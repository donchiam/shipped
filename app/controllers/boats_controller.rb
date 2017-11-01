class BoatsController < ApplicationController
  before_action :set_boat, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /boats
  # GET /boats.json
  def index
    @boats = Boat.all
  end

  # GET /boats/1
  # GET /boats/1.json
  def show
    @boat = Boat.find(params[:id])
  end

  # GET /boats/new
  def new
    @boat = Boat.new
  end

  # GET /boats/1/edit
  def edit
    set_boat

  end

  # POST /boats
  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
      if @boat.save
        redirect_to boats_path, notice: 'Boat was successfully created.'
      else
        render :new
      end
  end

  # POST /boats.json
#  def create
#    @boat = Boat.new(boat_params)
#
#    respond_to do |format|
#      if @boat.save
#        format.html { redirect_to @boat, notice: 'Boat was successfully created.' }
#        format.json { render :show, status: :created, location: @boat }
#      else
#        format.html { render :new }
#        format.json { render json: @boat.errors, status: :unprocessable_entity }
#      end
#    end
#  end

  # PATCH/PUT /boats/1
  def update
    @boat = Boat.find(params[:id])
    if @boat.update_attributes()
      redirect_to boats_path, notice: 'Boat was successfully updated.'
    else
      render :new
    end
  end
  # PATCH/PUT /boats/1.json
#  def update
#    respond_to do |format|
#      if @boat.update(boat_params)
#        format.html { redirect_to @boat, notice: 'Boat was successfully updated.' }
#        format.json { render :show, status: :ok, location: @boat }
#      else
#        format.html { render :edit }
#        format.json { render json: @boat.errors, status: :unprocessable_entity }
#      end
#    end
#  end

  # DELETE /boats/1
  def destroy
    set_boat
    @boat.destroy
    redirect_to boats_path, notice: 'Boat was successfully deleted.'
  end

  # DELETE /boats/1.json
#  def destroy
#    @boat.destroy
#    respond_to do |format|
#      format.html { redirect_to boats_url, notice: 'Boat was successfully destroyed.' }
#      format.json { head :no_content }
#    end
#  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boat
      @boat = Boat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boat_params
      params.require(:boat).permit(:name, :location, :containers, :job, :image, :user_id)
    end
end

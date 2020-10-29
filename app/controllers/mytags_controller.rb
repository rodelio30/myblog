class MytagsController < ApplicationController
  before_action :set_mytag, only: [:show, :edit, :update, :destroy]

  # GET /mytags
  # GET /mytags.json
  def index
    @mytags = Mytag.all
  end

  # GET /mytags/1
  # GET /mytags/1.json
  def show
  end

  # GET /mytags/new
  def new
    @mytag = Mytag.new
  end

  # GET /mytags/1/edit
  def edit
  end

  # POST /mytags
  # POST /mytags.json
  def create
    @mytag = Mytag.new(mytag_params)

    respond_to do |format|
      if @mytag.save
        format.html { redirect_to root_path, success: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @mytag }
      else
        format.html { render :new }
        format.json { render json: @mytag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mytags/1
  # PATCH/PUT /mytags/1.json
  def update
    respond_to do |format|
      if @mytag.update(mytag_params)
        format.html { redirect_to root_path, info: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @mytag }
      else
        format.html { render :edit }
        format.json { render json: @mytag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mytags/1
  # DELETE /mytags/1.json
  def destroy
    @mytag.destroy
    respond_to do |format|
      format.html { redirect_to root_path, danger: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mytag
      @mytag = Mytag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mytag_params
      params.require(:mytag).permit(:category)
    end
end

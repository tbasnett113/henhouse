class ClucksController < ApplicationController
  before_action :set_cluck, only: %i[ show edit update destroy ]

  # GET /clucks or /clucks.json
  def index
    @clucks = Cluck.all
  end

  # GET /clucks/1 or /clucks/1.json
  def show
  end

  # GET /clucks/new
  def new
    @cluck = Cluck.new
  end

  # GET /clucks/1/edit
  def edit
  end

  # POST /clucks or /clucks.json
  def create
    @cluck = Cluck.new(cluck_params)

    respond_to do |format|
      if @cluck.save
        format.html { redirect_to @cluck, notice: "Cluck was successfully created." }
        format.json { render :show, status: :created, location: @cluck }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cluck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clucks/1 or /clucks/1.json
  def update
    respond_to do |format|
      if @cluck.update(cluck_params)
        format.html { redirect_to @cluck, notice: "Cluck was successfully updated." }
        format.json { render :show, status: :ok, location: @cluck }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cluck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clucks/1 or /clucks/1.json
  def destroy
    @cluck.destroy
    respond_to do |format|
      format.html { redirect_to clucks_url, notice: "Cluck was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cluck
      @cluck = Cluck.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cluck_params
      params.require(:cluck).permit(:cluck)
    end
end

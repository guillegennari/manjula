class BreastFeedingsController < ApplicationController
  before_action :set_breast_feeding, only: [:show, :edit, :update, :destroy]

  # GET /breast_feedings
  # GET /breast_feedings.json
  def index
    @breast_feedings = BreastFeeding.all
  end

  # GET /breast_feedings/1
  # GET /breast_feedings/1.json
  def show
  end

  # GET /breast_feedings/new
  def new
    @babies = Baby.pluck :name, :id
    @breast_feeding = BreastFeeding.new
  end

  # GET /breast_feedings/1/edit
  def edit
    @babies = Baby.pluck :name, :id
  end

  # POST /breast_feedings
  # POST /breast_feedings.json
  def create
    @breast_feeding = BreastFeeding.new(breast_feeding_params)

    respond_to do |format|
      if @breast_feeding.save
        format.html { redirect_to @breast_feeding, notice: 'Breast feeding was successfully created.' }
        format.json { render :show, status: :created, location: @breast_feeding }
      else
        format.html { render :new }
        format.json { render json: @breast_feeding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /breast_feedings/1
  # PATCH/PUT /breast_feedings/1.json
  def update
    respond_to do |format|
      if @breast_feeding.update(breast_feeding_params)
        format.html { redirect_to @breast_feeding, notice: 'Breast feeding was successfully updated.' }
        format.json { render :show, status: :ok, location: @breast_feeding }
      else
        format.html { render :edit }
        format.json { render json: @breast_feeding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /breast_feedings/1
  # DELETE /breast_feedings/1.json
  def destroy
    @breast_feeding.destroy
    respond_to do |format|
      format.html { redirect_to breast_feedings_url, notice: 'Breast feeding was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_breast_feeding
      @breast_feeding = BreastFeeding.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def breast_feeding_params
      params.require(:breast_feeding).permit(:quantity, :duration, :baby_id)
    end
end

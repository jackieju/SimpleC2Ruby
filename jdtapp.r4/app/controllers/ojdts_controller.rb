class OjdtsController < ApplicationController
  before_action :set_ojdt, only: [:show, :edit, :update, :destroy]

  # GET /ojdts
  # GET /ojdts.json
  def index
    @ojdts = Ojdt.all
  end

  # GET /ojdts/1
  # GET /ojdts/1.json
  def show
  end

  # GET /ojdts/new
  def new
    @ojdt = Ojdt.new
  end

  # GET /ojdts/1/edit
  def edit
  end

  # POST /ojdts
  # POST /ojdts.json
  def create
    @ojdt = Ojdt.new(ojdt_params)

    respond_to do |format|
      if @ojdt.save
        format.html { redirect_to @ojdt, notice: 'Ojdt was successfully created.' }
        format.json { render :show, status: :created, location: @ojdt }
      else
        format.html { render :new }
        format.json { render json: @ojdt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ojdts/1
  # PATCH/PUT /ojdts/1.json
  def update
    respond_to do |format|
      if @ojdt.update(ojdt_params)
        format.html { redirect_to @ojdt, notice: 'Ojdt was successfully updated.' }
        format.json { render :show, status: :ok, location: @ojdt }
      else
        format.html { render :edit }
        format.json { render json: @ojdt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ojdts/1
  # DELETE /ojdts/1.json
  def destroy
    @ojdt.destroy
    respond_to do |format|
      format.html { redirect_to ojdts_url, notice: 'Ojdt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ojdt
      @ojdt = Ojdt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ojdt_params
      params.fetch(:ojdt, {})
    end
end

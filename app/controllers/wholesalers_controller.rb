class WholesalersController < ApplicationController
  before_action :set_wholesaler, only: [:show, :edit, :update, :destroy]

  # GET /wholesalers
  # GET /wholesalers.json
  def index
    @wholesalers = Wholesaler.all
  end

  # GET /wholesalers/1
  # GET /wholesalers/1.json
  def show
  end

  # GET /wholesalers/new
  def new
    @wholesaler = Wholesaler.new
  end

  # GET /wholesalers/1/edit
  def edit
  end

  # POST /wholesalers
  # POST /wholesalers.json
  def create
    @wholesaler = Wholesaler.new(wholesaler_params)

    respond_to do |format|
      if @wholesaler.save
        format.html { redirect_to @wholesaler, notice: 'Wholesaler was successfully created.' }
        format.json { render :show, status: :created, location: @wholesaler }
      else
        format.html { render :new }
        format.json { render json: @wholesaler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wholesalers/1
  # PATCH/PUT /wholesalers/1.json
  def update
    respond_to do |format|
      if @wholesaler.update(wholesaler_params)
        format.html { redirect_to @wholesaler, notice: 'Wholesaler was successfully updated.' }
        format.json { render :show, status: :ok, location: @wholesaler }
      else
        format.html { render :edit }
        format.json { render json: @wholesaler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wholesalers/1
  # DELETE /wholesalers/1.json
  def destroy
    @wholesaler.destroy
    respond_to do |format|
      format.html { redirect_to wholesalers_url, notice: 'Wholesaler was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wholesaler
      @wholesaler = Wholesaler.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wholesaler_params
      params.require(:wholesaler).permit(:name)
    end
end

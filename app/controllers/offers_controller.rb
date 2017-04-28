class OffersController < ApplicationController
  before_action :set_batch
  before_action :set_manufacturer
  before_action :set_wholesaler
  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  # GET /offers
  # GET /offers.json
  def index
    @offers = Offer.all
  end

  # GET /offers/1
  # GET /offers/1.json
  def show
  end

  # GET /offers/new
  def new
    set_wholesalers
    @offer = Offer.new
  end

  # GET /offers/1/edit
  def edit
  end

  # POST /offers
  def create
    @offer = Offer.new(offer_params)

    respond_to do |format|
      if @offer.save
        format.html { redirect_to :back, notice: 'Offer was successfully created.' }
        format.json { render :show, status: :created, location: @offer }
      else
        format.html { render :new }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offers/1
  def update
    #logger.debug "\n\nDEBUG: #{@wholesaler.inspect}\n\n"
    respond_to do |format|
      if @offer.update(offer_params)
        format.html { redirect_to wholesaler_offer_path(@wholesaler, @offer), notice: 'Offer was successfully updated.' }
        format.json { render :show, status: :ok, location: @offer }
      else
        format.html { render :edit }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offers/1
  # DELETE /offers/1.json
  def destroy
    @offer.destroy

    respond_to do |format|
      format.html { redirect_to :back, notice: 'Offer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_offer
    @offer = Offer.find(params[:id])
  end

  def set_batch
    @batch = Batch.find_by(id: params[:batch_id])
  end

  def set_manufacturer
    @manufacturer = Manufacturer.find_by(id: @batch.manufacturer_id)
  end

  def set_wholesaler
    @wholesaler = Wholesaler.find(params[:wholesaler_id])
  end

  def set_wholesalers
    @selected_wholesalers = []       #wholesalers where the list of offer_ids includes this one
    Wholesaler.all.each do |wholesaler|
      @selected_wholesalers << wholesaler if wholesaler.batch_ids.include?(@batch.id)
    end
    @unselected_wholesalers = Wholesaler.all - @selected_wholesalers
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def offer_params
    params.require(:offer).permit(:batch_id, :wholesaler_id, :amount, :accepted, :ignored)
  end
end

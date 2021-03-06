module Wholesalers
  class OffersController < ApplicationController
    before_action :set_offer, only: [:edit, :update]
    before_action :set_wholesaler


    def edit
    end

    def update
      #logger.debug "\n\nDEBUG: #{@wholesaler.inspect}\n\n"
      respond_to do |format|
        if @offer.update(offer_params)
          format.html { redirect_to wholesaler_path(@offer.wholesaler), notice: 'Offer was successfully updated.' }
          format.json { render :show, status: :ok, location: @offer }
        else
          format.html { render :edit }
          format.json { render json: @offer.errors, status: :unprocessable_entity }
        end
      end
    end

    private

    def set_offer
      @offer = Offer.find(params[:id])
    end

    def set_wholesaler
      @wholesaler = Wholesaler.find(params[:wholesaler_id])
    end

    def offer_params
      params.require(:offer).permit(:batch_id, :wholesaler_id, :amount, :accepted, :ignored)
    end
  end
end

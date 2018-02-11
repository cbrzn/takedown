class OffersController < ApplicationController
  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      flash[:success] = "Offer created"
    else
      render 'new'
    end
  end

  private
    def offer_params
      params.require(:offer).permit(:offerType, :paymentMethodID, :localCurrency,
                                    :exchangeRate, :location, :headline, :termsAgreement,
                                    :standardHours, :user_id)
    end
end

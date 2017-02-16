class BidsController < ApplicationController

  def create
    
    @bid = Bid.new(bids_params)
     if @bid.save
       redirect_to "/bids/#{@bid.id}"
     else
       flash[:error] = @bid.errors
       render 'new'

     end
  end

  def bids_params
  
    params.require(:bid).permit(:ammount)
  
  end

end

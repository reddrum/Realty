class PublicController < ApplicationController
  def main
    if account_signed_in?
      redirect_to dashboard_path, flash: {success: "Welcome to Realty finder!"} and return
    end
    
    @realties = Realty.latest
  end
end

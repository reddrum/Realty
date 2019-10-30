class PublicController < ApplicationController
  def main
    if account_signed_in?
      path = current_account.admin? ? accounts_path : dashboard_path  
      redirect_to path, flash: {success: "Welcome to Realty finder!"} and return
    end
    
    @realties = Realty.latest
  end
end

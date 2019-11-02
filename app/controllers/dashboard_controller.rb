class DashboardController < ApplicationController
  before_action :set_sidebar

  def index; end

  def profile
    @account = Account.find(params[:id])
    @realties = Realty.where(account_id: @account.id)

    @realties_sold = Realty.where(account_id: @account.id).sold.count
    @realties_for_sale = Realty.where(account_id: @account.id).for_sale.count
    @realties_leased = Realty.where(account_id: @account.id).leased.count
    @realties_for_rent = Realty.where(account_id: @account.id).for_rent.count
  end

  private
    def set_sidebar
      @show_sidebar = true if account_signed_in?
    end
end

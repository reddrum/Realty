class PublicController < ApplicationController
  def main
    @realties = Realty.latest
  end
end

class HomesController < ApplicationController
  def top
    @customers = Customer.all
  end

  def about
  end
end

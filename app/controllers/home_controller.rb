class HomeController < ApplicationController
  def index
    @rentable = Equipment.evalible
    @transaction = Transaction.new
    if user_signed_in? && current_user.transactions != nil
      @transactions = current_user.transactions.where(:returned_datetime => nil)
    end
  end
end

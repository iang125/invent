class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :equipment

  def returned?
    if returned_datetime != nil && rented_datetime != nil
      true
    elsif returned_datetime == nil
      false
    end
  end

end

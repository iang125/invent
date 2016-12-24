class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :equipment
  def returned?
    if self.returneddatetime != nil
      false
    else
      true
    end
  end

end

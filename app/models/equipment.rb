class Equipment < ApplicationRecord
  has_many :transactions
  def rented?
    transactions.each do |a|
      if a.returned? == false
        return true
        break
      end
    end
    return false
  end
end

class Equipment < ApplicationRecord
  has_many :transactions
  def avalible
    avalible = []
  end
  def rented?
     rent=[]
     transactions.each { |tran| rent << tran if(tran.returned? == false) }
     return rent.any?
  end
  def self.evalible
    free =[]
    all.each { |equip| free << equip if(equip.rented? == false) }
    return free
  end
end

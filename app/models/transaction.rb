class Transaction < ApplicationRecord
   validates :bidaltzaile_kontua, presence: true
   validates :hartzaile_kontua, presence: true
   validates :kopurua, presence: true

   

end

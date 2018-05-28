class Transaction < ApplicationRecord
   validates :transakzio_kodea, presence: true, uniqueness: true
   validates :bidaltzaile_kontua, presence: true, length: {is: 5}
   validates :hartzaile_kontua, presence: true, length: {is: 5}
   validates :kopurua, presence: true

   private

end

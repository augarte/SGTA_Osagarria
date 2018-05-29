class Account < ApplicationRecord
	validates :kontu_zenbakia, presence: true
    validates :erabiltzaile_id, presence: true
    validates :sortze_data, presence: true

end

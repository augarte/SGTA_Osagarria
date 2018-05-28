class Account < ApplicationRecord
  belongs_to :user_session
  belongs_to :transaction
end

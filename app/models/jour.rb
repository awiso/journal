class Jour < ApplicationRecord
    has_one :future_log, dependent: :destroy
end

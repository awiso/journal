class FutureLog < ApplicationRecord
  belongs_to :jour
  has_many :future_log_entries
end

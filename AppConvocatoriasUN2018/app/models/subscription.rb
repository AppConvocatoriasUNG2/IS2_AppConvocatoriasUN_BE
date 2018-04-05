class Subscription < ApplicationRecord
  belongs_to :subsoffer, required: false
  belongs_to :usersubs, required: false
end

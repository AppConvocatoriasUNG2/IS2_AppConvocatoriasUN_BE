class Dependency < ApplicationRecord
    has_many :mon_grant_offers
    has_many :aux_std_offers
end

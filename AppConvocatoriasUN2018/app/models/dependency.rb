class Dependency < ApplicationRecord
    has_many :mon_grant_offer
    has_many :aux_std_offer
end

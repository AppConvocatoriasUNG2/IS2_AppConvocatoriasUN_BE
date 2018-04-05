class ApplicantUser < ApplicationRecord
    has_many :file_doc
    has_many :subscription
    has_many :aux_std_offer, through: :subscription
    has_many :mon_grant_offer, through: :subscription
    has_many :life_u_sponsor_offer, through: :subscription
    has_many :soc_ec_support_offer, through: :subscription
end

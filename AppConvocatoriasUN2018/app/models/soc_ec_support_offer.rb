class SocEcSupportOffer < ApplicationRecord
    has_many :subscription
    has_many :applicant_user, through: :subscription
    has_one :file_doc
end

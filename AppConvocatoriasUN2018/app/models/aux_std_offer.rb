class AuxStdOffer < ApplicationRecord
    has_many :subscription
    has_many :applicantuser, through: :subscription
end

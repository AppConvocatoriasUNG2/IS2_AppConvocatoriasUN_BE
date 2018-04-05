class AuxStdOffer < ApplicationRecord
    has_many :subscriptions
    has_many :applicant_users, through: :subscriptions
    has_one :file_doc
    belongs_to :dependency
end

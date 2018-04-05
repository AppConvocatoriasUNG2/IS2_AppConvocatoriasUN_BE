class LifeUSponsorOffer < ApplicationRecord
    has_many :subscriptions
    has_many :applicant_users, through: :subscriptions
    has_one :file_doc
end

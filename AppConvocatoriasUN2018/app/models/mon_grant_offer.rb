class MonGrantOffer < ApplicationRecord
    has_many :subscriptions
    has_many :applicant_users, through: :subscriptions
    belongs_to :admin_user
    has_one :file_doc
    belongs_to :dependency
end

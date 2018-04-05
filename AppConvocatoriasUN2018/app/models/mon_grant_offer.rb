class MonGrantOffer < ApplicationRecord
    has_many :subscription
    has_many :applicant_user, through: :subscription
    belongs_to :admin_user
    has_one :file_doc
    belongs_to :dependency
end

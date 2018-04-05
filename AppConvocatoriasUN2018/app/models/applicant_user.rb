class ApplicantUser < ApplicationRecord
    has_many :filedoc
    has_many :subscription
    has_many :auxstdoffer, through: :subscription
    has_many :mongrantoffer, through: :subscription
    has_many :lifeusponsoroffer, through: :subscription
    has_many :socecsupportoffer, through: :subscription
end

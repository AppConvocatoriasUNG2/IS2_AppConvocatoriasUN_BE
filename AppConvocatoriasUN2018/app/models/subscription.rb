class Subscription < ApplicationRecord
  belongs_to :applicantuser
  belongs_to :lifeusponsoroffer
  belongs_to :auxstdoffer
  belongs_to :mongrantoffer
  belongs_to :socecsupportoffer
end

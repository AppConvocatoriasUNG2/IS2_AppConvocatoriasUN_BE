# == Schema Information
#
# Table name: life_u_sponsor_offers
#
#  id               :integer          not null, primary key
#  namelusoffer     :string
#  addressedto2     :string(3)
#  publicationdate2 :datetime
#  deadlinedate2    :datetime
#  selectreq3       :string(4)
#  valuesr          :decimal(4, 1)
#  modalitylus      :string(1)
#  numquotas        :integer
#  hrsperweek2      :integer
#  payment2         :decimal(3, 1)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class LifeUSponsorOffer < ApplicationRecord
    has_many :subscriptions
    has_many :applicant_users, through: :subscriptions
    has_one :file_doc
end

# == Schema Information
#
# Table name: soc_ec_support_offers
#
#  id               :integer          not null, primary key
#  namesesoffer     :string
#  addressedto4     :string(3)
#  publicationdate4 :datetime
#  deadlinedate4    :datetime
#  selectreq4       :string(4)
#  valuesr          :decimal(4, 1)
#  progtype         :string(4)
#  coresphrs        :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class SocEcSupportOffer < ApplicationRecord
    has_many :subscriptions
    has_many :applicant_users, through: :subscriptions
    has_one :file_doc
end

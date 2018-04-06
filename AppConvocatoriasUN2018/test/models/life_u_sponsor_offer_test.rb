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

require 'test_helper'

class LifeUSponsorOfferTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

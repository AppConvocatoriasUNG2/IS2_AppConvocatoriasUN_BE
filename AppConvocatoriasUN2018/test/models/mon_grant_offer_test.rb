# == Schema Information
#
# Table name: mon_grant_offers
#
#  id               :integer          not null, primary key
#  namemgoffer      :string
#  addressedto3     :string(3)
#  publicationdate3 :datetime
#  deadlinedate3    :datetime
#  selectreq2       :string(4)
#  valuesr2         :decimal(4, 1)
#  faculty_id       :integer
#  modalitymg       :string(1)
#  acttype          :string(1)
#  subjectM         :string
#  hrsperweek       :integer
#  admin_user_id    :integer
#  stateoffer       :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class MonGrantOfferTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

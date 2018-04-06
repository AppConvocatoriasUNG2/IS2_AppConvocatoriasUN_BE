# == Schema Information
#
# Table name: aux_std_offers
#
#  id                     :integer          not null, primary key
#  nameauxstdoffer        :string
#  addressedto1           :string(3)
#  publicationdate1       :datetime
#  deadlinedate1          :datetime
#  typeoffer              :string(1)
#  dependency_id          :integer
#  selectreq1             :string(4)
#  valuesr                :decimal(4, 1)
#  hrsperweekavailability :integer
#  payment                :decimal(3, 1)
#  durationlinkinweeks    :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'test_helper'

class AuxStdOfferTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

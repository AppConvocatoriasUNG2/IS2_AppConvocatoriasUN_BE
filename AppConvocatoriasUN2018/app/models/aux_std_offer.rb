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

class AuxStdOffer < ApplicationRecord
    has_many :subscriptions
    has_many :applicant_users, through: :subscriptions
    has_one :file_doc
    belongs_to :dependency
end

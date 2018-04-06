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

class MonGrantOffer < ApplicationRecord
    has_many :subscriptions
    has_many :applicant_users, through: :subscriptions
    belongs_to :admin_user
    has_one :file_doc
    belongs_to :dependency
end

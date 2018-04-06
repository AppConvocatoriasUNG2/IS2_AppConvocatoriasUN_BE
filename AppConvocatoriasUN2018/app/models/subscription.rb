# == Schema Information
#
# Table name: subscriptions
#
#  id           :integer          not null, primary key
#  susboffer_id :integer
#  usersubs_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Subscription < ApplicationRecord
  belongs_to :subsoffer, required: false
  belongs_to :usersubs, required: false
end

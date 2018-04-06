# == Schema Information
#
# Table name: dependencies
#
#  id             :integer          not null, primary key
#  namedependency :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Dependency < ApplicationRecord
    has_many :mon_grant_offers
    has_many :aux_std_offers
end

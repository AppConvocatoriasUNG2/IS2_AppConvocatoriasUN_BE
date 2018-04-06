# == Schema Information
#
# Table name: applicant_users
#
#  idapplicantuser        :integer          not null, primary key
#  tiun                   :integer
#  emailapplicant         :string
#  fullnameapplicant      :string
#  encryptedPassword      :string
#  papaapplicant          :decimal(2, 1)
#  pbmapplicant           :decimal(4, 1)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#

require 'test_helper'

class ApplicantUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

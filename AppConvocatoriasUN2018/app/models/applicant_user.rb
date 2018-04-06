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

class ApplicantUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :file_docs, as: :filebelongsto_id
    has_many :subscriptions
    has_many :aux_std_offers, through: :subscriptions
    has_many :mon_grant_offers, through: :subscriptions
    has_many :life_u_sponsor_offers, through: :subscriptions
    has_many :soc_ec_support_offers, through: :subscriptions
end

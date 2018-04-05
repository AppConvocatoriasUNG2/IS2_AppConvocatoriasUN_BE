class ApplicantUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :file_docs
    has_many :subscriptions
    has_many :aux_std_offers, through: :subscriptions
    has_many :mon_grant_offers, through: :subscriptions
    has_many :life_u_sponsor_offers, through: :subscriptions
    has_many :soc_ec_support_offers, through: :subscriptions
end

# == Schema Information
#
# Table name: file_docs
#
#  id               :integer          not null, primary key
#  typefile         :string(3)
#  namefile         :string
#  existfile        :boolean
#  filebelongsto_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class FileDoc < ApplicationRecord
  belongs_to :filebelongsto_id, required: true
end

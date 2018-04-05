class FileDoc < ApplicationRecord
  belongs_to :filebelongsto, required: true
end

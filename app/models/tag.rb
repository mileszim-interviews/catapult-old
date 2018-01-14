# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_tags_on_name  (name)
#

class Tag < ApplicationRecord
  has_many :taggings
  has_many :breeds,
    through: :taggings,
    source: 'taggable',
    source_type: 'Breed'

  # Validations
  validates :name, presence: true
end

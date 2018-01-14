# == Schema Information
#
# Table name: breeds
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Breed < ApplicationRecord
  has_many :taggings, as: :taggable
  has_many :tags, through: :taggings

  # Validations
  validates :name, presence: true
  validates_associated :tags

  def tag_list
    tagged_with = taglist.where(taggable_id: id).map(&:taggable)
    return [] unless tagged_with.size > 0
    tagged_with.pluck(:name)
  end

  def taglist
    @taglist ||= Tagging.includes(:tags, :taggable).all
  end
end

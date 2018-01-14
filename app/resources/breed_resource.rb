class BreedResource < JSONAPI::Resource
  caching

  has_many :tags, acts_as_set: true

  attribute :name
  attribute :tag_list

  def self.updatable_fields(context)
    super - [:tag_count, :tag_list]
  end

  def self.creatable_fields(context)
    super - [:tag_count, :tag_list]
  end
end

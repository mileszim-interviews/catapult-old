class TagResource < JSONAPI::Resource
  caching

  has_many :breeds

  attributes :name, :breed_list

  def breed_list
    return [] unless @model.breeds.size > 0
    @model.breeds.pluck(:name)
  end

  def self.updatable_fields(context)
    super - [:breed_count, :breed_list]
  end

  def self.creatable_fields(context)
    super - [:breed_count, :breed_list]
  end
end

require 'active_support/concern'

module UpdateCounts
  extend ActiveSupport::Concern

  protected

  def update_count!(counter_model)
    @counter_model = counter_model
    return unless should_update_count?
    self.increment!("#{counter_model_name}s_count")
  end

  private

  def counter_model_name
    @counter_model.class.name.downcase
  end

  def counter_model_count
    self.association(:"#{counter_model_name}s").size
  end

  def count_attr
    self[:"#{counter_model_name}s_count"]
  end

  def should_update_count?
    return false unless self
    return false unless counter_model_count != count_attr
    return false unless count_attr >= 0
    true
  end
end

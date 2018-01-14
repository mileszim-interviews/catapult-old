class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :name, required: true, index: true
      
      # Defaults
      t.timestamps
    end
  end
end

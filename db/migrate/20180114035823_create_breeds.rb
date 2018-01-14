class CreateBreeds < ActiveRecord::Migration[5.1]
  def change
    create_table :breeds do |t|
      t.string :name, required: true

      # Defaults
      t.timestamps
    end
  end
end

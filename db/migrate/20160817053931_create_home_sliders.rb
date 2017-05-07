class CreateHomeSliders < ActiveRecord::Migration[5.0]
  def change
    create_table :home_sliders do |t|
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end

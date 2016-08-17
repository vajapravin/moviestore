class CreateSubtitles < ActiveRecord::Migration[5.0]
  def change
    create_table :subtitles do |t|
      t.references :movie, foreign_key: true
      t.string :link

      t.timestamps
    end
  end
end

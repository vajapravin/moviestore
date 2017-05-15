class CreateIndexMovie < ActiveRecord::Migration[5.0]
  def change
  	Movie.__elasticsearch__.create_index! force: true
  end
end

class AddColumnFacebookCommenterUrlIntoMovie < ActiveRecord::Migration[5.0]
  def change
  	add_column :movies, :facebook_commenter_url, :string
  end
end

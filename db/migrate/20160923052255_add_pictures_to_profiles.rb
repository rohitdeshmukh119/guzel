class AddPicturesToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :pictures, :json
  end
end

class AddPolaroidsToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :polaroids, :json
  end
end

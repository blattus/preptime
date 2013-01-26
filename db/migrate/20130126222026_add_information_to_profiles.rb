class AddInformationToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :first_name, :string
    add_column :profiles, :last_name, :string
    add_column :profiles, :state, :string
    add_column :profiles, :school, :string
    add_column :profiles, :event, :string
  end
end

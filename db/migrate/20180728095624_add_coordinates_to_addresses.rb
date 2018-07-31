class AddCoordinatesToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :latitude, :string
    add_column :addresses, :longitude, :string
  end
end

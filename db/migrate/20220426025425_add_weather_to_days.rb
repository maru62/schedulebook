class AddWeatherToDays < ActiveRecord::Migration[7.0]
  def change
    add_column :days, :weather, :string
  end
end

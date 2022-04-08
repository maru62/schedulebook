class CreateCalendars < ActiveRecord::Migration[7.0]
  def change
    create_table :calendars do |t|
      t.date :date
      t.boolean :event
      t.string :memo

      t.timestamps
    end
  end
end

class AddCursedToSuburbanTeens < ActiveRecord::Migration[5.1]
  def change
    add_column :suburban_teens, :cursed, :boolean, null: false, default: false
  end
end

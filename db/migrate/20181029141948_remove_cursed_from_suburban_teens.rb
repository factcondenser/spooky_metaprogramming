class RemoveCursedFromSuburbanTeens < ActiveRecord::Migration[5.2]
  def change
    remove_column :suburban_teens, :cursed, :boolean
  end
end

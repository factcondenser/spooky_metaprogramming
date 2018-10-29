class RemoveDobFromSuburbanTeens < ActiveRecord::Migration[5.1]
  def change
    remove_column :suburban_teens, :dob, :datetime
  end
end

class CreateSuburbanTeens < ActiveRecord::Migration[5.1]
  def change
    create_table :suburban_teens do |t|
      t.string :name
      t.datetime :dob
      t.timestamps
    end
  end
end

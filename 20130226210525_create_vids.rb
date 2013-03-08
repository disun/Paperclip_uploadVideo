class CreateVids < ActiveRecord::Migration
  def change
    create_table :vids do |t|
      t.string :name

      t.timestamps
    end
  end
end

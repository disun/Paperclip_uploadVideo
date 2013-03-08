class AddAttachmentViToVids < ActiveRecord::Migration
  def self.up
    change_table :vids do |t|
      t.attachment :vi
    end
  end

  def self.down
    drop_attached_file :vids, :vi
  end
end

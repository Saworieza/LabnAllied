class AddAttachmentAvatarToPpbs < ActiveRecord::Migration
  def self.up
    change_table :ppbs do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :ppbs, :avatar
  end
end

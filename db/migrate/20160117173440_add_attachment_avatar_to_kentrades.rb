class AddAttachmentAvatarToKentrades < ActiveRecord::Migration
  def self.up
    change_table :kentrades do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :kentrades, :avatar
  end
end

class AddAttachmentAvatarToInsurances < ActiveRecord::Migration
  def self.up
    change_table :insurances do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :insurances, :avatar
  end
end

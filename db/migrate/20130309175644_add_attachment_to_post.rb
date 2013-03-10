class AddAttachmentToPost < ActiveRecord::Migration
  def self.up
    add_attachment :posts, :attachment
  end

  def self.down
    remove_attachment :posts, :attachment
  end
end
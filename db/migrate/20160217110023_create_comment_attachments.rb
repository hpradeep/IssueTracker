class CreateCommentAttachments < ActiveRecord::Migration
  def change
    create_table :comment_attachments do |t|
       t.attachment :attachment
       t.references :comment
      t.timestamps null: false
    end
  end
end

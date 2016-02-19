class CreateIssueAttachments < ActiveRecord::Migration
  def change
    create_table :issue_attachments do |t|
      t.attachment :attachment
      t.references  :issue
      t.timestamps null: false
    end
  end
end

class CreatePrivateMessage < ActiveRecord::Migration
  def change
    create_table :private_messages do |t|
      t.timestamps null: false
      t.string :content
      t.references :sender
      t.references :receiver
      t.boolean :unread
    end
  end
end

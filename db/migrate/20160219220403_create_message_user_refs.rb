class CreateMessageUserRefs < ActiveRecord::Migration
  def change
    create_table :message_user_refs do |t|
      t.belongs_to :message, index: true
      t.belongs_to :user, index: true
      t.integer :status, limit: 1

      t.timestamps null: false
    end
  end
end

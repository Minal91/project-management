class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.references :project, null: false, foreign_key: true
      t.string :title, null: false
      t.text :description
      t.references :admin_user, null: false, foreign_key: true
      t.string :message_type, null: true
      t.string :status, default: "unread"
      t.timestamps
    end
  end
end

class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :discription
      t.string :deadline
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

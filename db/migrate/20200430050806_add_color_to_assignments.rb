class AddColorToAssignments < ActiveRecord::Migration[6.0]
  def change
    add_column :assignments, :color, :string
  end
end

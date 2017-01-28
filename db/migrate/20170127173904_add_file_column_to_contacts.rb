class AddFileColumnToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :attachment, :string
  end
end

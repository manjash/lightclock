class CreateThinkerapps < ActiveRecord::Migration[5.0]
  def change
    create_table :thinkerapps do |t|

      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :degree
      t.string :field
      t.string :website
      t.boolean :accepts_data_treatment

      t.timestamps
    end
  end
end

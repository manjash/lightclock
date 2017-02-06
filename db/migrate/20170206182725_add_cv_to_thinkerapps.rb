class AddCvToThinkerapps < ActiveRecord::Migration[5.0]
  def change
    add_column :thinkerapps, :upload_cv, :string
  end
end

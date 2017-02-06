class AddEmailToResearchorders < ActiveRecord::Migration[5.0]
  def change
    add_column :researchorders, :email, :string
  end
end

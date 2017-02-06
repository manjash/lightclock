class CreateResearchorders < ActiveRecord::Migration[5.0]
  def change
    create_table :researchorders do |t|

      t.string :first_name
      t.string :last_name
      t.string :organisation
      t.string :phone
      t.string :research_subject
      t.string :time
      t.string :timezone

      t.boolean :accepts_data_treatment

      t.timestamps
    end
  end
end

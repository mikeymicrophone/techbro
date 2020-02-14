class CreateContributions < ActiveRecord::Migration[6.0]
  def change
    create_table :contributions do |t|
      t.text :expression
      t.belongs_to :benefactor, null: false, foreign_key: true
      t.boolean :active, null: false, default: false

      t.timestamps
    end
  end
end

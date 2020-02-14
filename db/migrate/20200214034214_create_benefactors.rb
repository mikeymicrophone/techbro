class CreateBenefactors < ActiveRecord::Migration[6.0]
  def change
    create_table :benefactors do |t|
      t.string :moniker

      t.timestamps
    end
  end
end

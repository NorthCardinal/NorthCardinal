class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :debitor_account_id
      t.integer :creditor_account_id
      t.decimal :amount
      t.string :description

      t.timestamps null: false
    end
  end
end

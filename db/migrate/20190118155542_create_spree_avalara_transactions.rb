class CreateSpreeAvalaraTransactions < SpreeExtension::Migration[4.2]
  def change
    return if table_exists?(:spree_avalara_transactions)

    create_table :spree_avalara_transactions do |t|
      t.references :order, index: true
      t.references :reimbursement, index: true
      t.string :message

      t.timestamps
    end
  end
end

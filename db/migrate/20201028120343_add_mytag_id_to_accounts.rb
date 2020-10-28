class AddMytagIdToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :mytag_id, :integer
  end
end

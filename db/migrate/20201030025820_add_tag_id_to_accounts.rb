class AddTagIdToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :tag_id, :integer
  end
end

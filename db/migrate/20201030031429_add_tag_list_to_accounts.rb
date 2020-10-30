class AddTagListToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :tag_list, :string
  end
end

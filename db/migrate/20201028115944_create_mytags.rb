class CreateMytags < ActiveRecord::Migration[6.0]
  def change
    create_table :mytags do |t|
      t.string :category

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.references :user, index: true 
      t.date   :deadline_for_bidding

      t.timestamps
    end
  end
end

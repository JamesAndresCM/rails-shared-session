class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :body
      t.references :user

      t.timestamps
    end
  end
end

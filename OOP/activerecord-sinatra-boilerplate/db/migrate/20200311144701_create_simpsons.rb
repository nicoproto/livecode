class CreateSimpsons < ActiveRecord::Migration[5.1]
  def change
    create_table :simpsons do |t|
      t.string :name
      t.string :quote

      t.timestamps
    end
  end
end

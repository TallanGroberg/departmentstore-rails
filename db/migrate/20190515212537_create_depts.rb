class CreateDepts < ActiveRecord::Migration[5.2]
  def change
    create_table :depts do |t|
      t.string :isle
      t.text :body
      t.belongs_to :shop, foreign_key: true

      t.timestamps
    end
  end
end

class CreateNouns < ActiveRecord::Migration
  def change
    create_table :nouns do |t|
      t.string :name
      t.string :attributes
      t.integer :popularity
      t.boolean :verbable
      t.timestamps
    end
  end
end

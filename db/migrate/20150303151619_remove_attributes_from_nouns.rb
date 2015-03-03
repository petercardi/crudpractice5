class RemoveAttributesFromNouns < ActiveRecord::Migration
  def change
    remove_column :nouns, :attributes
  end
end

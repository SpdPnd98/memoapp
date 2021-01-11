class AddCategoryToMemos < ActiveRecord::Migration[6.0]
  def change
    add_reference :memos, :category, null: false, foreign_key: true
  end
end

class CreateMemos < ActiveRecord::Migration[6.0]
  def change
    create_table :memos do |t|
      t.string :title
      t.string :body
      t.references :memoboard, null: false, foreign_key: true

      t.timestamps
    end
  end
end

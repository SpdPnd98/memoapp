class CreateMemoBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :memo_boards do |t|
      t.string :name
      t.string :owner

      t.timestamps
    end
  end
end

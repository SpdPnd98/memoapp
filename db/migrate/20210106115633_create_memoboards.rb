class CreateMemoboards < ActiveRecord::Migration[6.0]
  def change
    create_table :memoboards do |t|
      t.string :memoboard_name

      t.timestamps
    end
  end
end

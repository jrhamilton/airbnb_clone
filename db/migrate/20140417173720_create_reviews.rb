class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :room_id
      t.integer :stars

      t.timestamps
    end
  end
end

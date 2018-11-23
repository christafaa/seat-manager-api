class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.string :number
      t.integer :attendee_id
    end
  end
end

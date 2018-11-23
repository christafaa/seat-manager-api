class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :title
      t.string :date
      t.string :location
    end
  end
end

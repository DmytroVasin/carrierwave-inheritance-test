class AddTables < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :file
    end

    create_table :purchased_images do |t|
      t.string :file
    end
  end
end

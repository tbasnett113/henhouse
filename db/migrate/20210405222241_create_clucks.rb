class CreateClucks < ActiveRecord::Migration[6.1]
  def change
    create_table :clucks do |t|
      t.text :cluck

      t.timestamps
    end
  end
end

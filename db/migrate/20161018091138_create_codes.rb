class CreateCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :codes do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end

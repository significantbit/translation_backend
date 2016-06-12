class CreateTranslations < ActiveRecord::Migration[5.0]
  def change
    create_table :translations do |t|
      t.string :key

      t.timestamps
    end
  end
end

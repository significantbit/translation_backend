class CreateTranslationTable < ActiveRecord::Migration[5.0]
  def up
    Translation.create_translation_table! :value => :string
  end

  def down
    Translation.drop_translation_table!
  end
end

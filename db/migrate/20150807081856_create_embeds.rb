class CreateEmbeds < ActiveRecord::Migration
  def change
    create_table :embeds do |t|
      t.string :title
      t.integer :app_id
      t.integer :webform_id
      t.string :environment

      t.timestamps null: false
    end
    add_index :embeds, :webform_id, unique: true
  end
end

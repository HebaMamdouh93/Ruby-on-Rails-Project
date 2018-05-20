class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.references :lecture, foreign_key: {on_delete: :cascade}
      t.references :user, foreign_key: {on_delete: :cascade}
      t.timestamps
    end
  end
end

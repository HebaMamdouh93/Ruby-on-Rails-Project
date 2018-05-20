class CreateLecturesUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :lectures_users do |t|
      t.references :lecture, foreign_key: {on_delete: :cascade}
      t.references :user, foreign_key: {on_delete: :cascade}
    end
  end
end

class ChangeInstructorToBeIntegerInUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :instructor, :integer
  end
end

class AddUserAndNotesReferences < ActiveRecord::Migration[5.1]
  def change
    add_reference :notes, :user, index:true
    add_foreign_key :notes, :users
  end
end

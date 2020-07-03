class RemoveContraintAndRemoveIndexFromUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :matricule, :string, :null => true
    remove_index :users, name: "index_users_on_matricule"
  end
end

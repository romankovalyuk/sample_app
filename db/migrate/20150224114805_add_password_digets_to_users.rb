class AddPasswordDigetsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pasword_digets, :string
  end
end

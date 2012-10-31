class AddAcctypeToUserTable < ActiveRecord::Migration
  def change

    add_column :users, :acctype, :string
  end
end

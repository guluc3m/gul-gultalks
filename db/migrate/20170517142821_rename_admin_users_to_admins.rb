class RenameAdminUsersToAdmins < ActiveRecord::Migration[4.2]
  def up
    rename_table :admin_users, :admins
  end

  def down
    rename_table :admins, :admin_users
  end
end

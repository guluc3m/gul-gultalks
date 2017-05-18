class RenameAdminUsersToAdmins < ActiveRecord::Migration
  def up
    rename_table :admin_users, :admins
  end

  def down
    rename_table :admins, :admin_users
  end
end

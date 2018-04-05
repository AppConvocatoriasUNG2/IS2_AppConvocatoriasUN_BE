class CreateAdminUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_users, :id => false do |t|
      t.primary_key :idadminuser, :auto_increment => false
      t.string :admincharge, limit: 2
      t.string :emailadmin
      t.string :fullnameadmin
      t.string :encryptedPass

      t.timestamps
    end
  end
end

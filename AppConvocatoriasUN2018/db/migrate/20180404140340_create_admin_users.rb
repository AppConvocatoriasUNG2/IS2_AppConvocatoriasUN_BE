class CreateAdminUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_users do |t|
      t.primary_key :idadminuser
      t.string :admincharge, limit: 2
      t.string :emailadmin
      t.string :fullnameadmin
      t.string :encryptedPass

      t.timestamps
    end
  end
end

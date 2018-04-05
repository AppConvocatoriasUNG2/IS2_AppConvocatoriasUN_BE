class CreateApplicantUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :applicant_users, :id => false do |t|
      t.primary_key :idapplicantuser, :auto_increment => false
      t.integer :tiun
      t.string :emailapplicant
      t.string :fullnameapplicant
      t.string :encryptedPassword
      t.decimal :papaapplicant, :precision => 2, :scale => 1
      t.decimal :pbmapplicant, :precision => 4, :scale => 1

      t.timestamps
    end
  end
end

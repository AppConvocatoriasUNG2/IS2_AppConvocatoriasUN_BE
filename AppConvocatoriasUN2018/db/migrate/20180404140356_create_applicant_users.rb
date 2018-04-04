class CreateApplicantUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :applicant_users do |t|
      t.primary_key, :idapplicantuser
      t.integer, :tiun
      t.string, :emailapplicant
      t.string, :fullnameapplicant
      t.string, :encryptedPassword
      t.decimal2, :papaapplicant
      t.decimal1, :papaapplicant
      t.decimal3 :pbmapplicant
      t.decimal0 :pbmapplicant

      t.timestamps
    end
  end
end

class CreateMonGrantOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :mon_grant_offers do |t|
      t.primary_key, :idmongrantoffer
      t.string, :namemgoffer
      t.string :addressedto3, limit: 3
      t.timestamp, :publicationdate3
      t.datetime, :deadlinedate3
      t.string :selectreq2, limit: 4
      t.decimal4, :valuesr2
      t.decimal1, :valuesr2
      t.references, :faculty
      t.string :modalitymg, limit: 1
      t.string :acttype, limit: 1
      t.string, :subjectM
      t.integer, :hrsperweek
      t.references, :admin_user
      t.string :stateoffer

      t.timestamps
    end
  end
end

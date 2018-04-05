class CreateSocEcSupportOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :soc_ec_support_offers do |t|
      t.string :namesesoffer
      t.string :addressedto4, limit: 3
      t.timestamp :publicationdate4
      t.datetime :deadlinedate4
      t.string :selectreq4, limit: 4
      t.decimal :valuesr, :precision => 4, :scale => 1
      t.string :progtype, limit: 4
      t.integer :coresphrs

      t.timestamps
    end
  end
end

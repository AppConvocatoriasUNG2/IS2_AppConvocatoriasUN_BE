class CreateLifeUSponsorOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :life_u_sponsor_offers do |t|
      t.integer :idlifeusponsoroffer
      t.string :namelusoffer
      t.string :addressedto2, limit: 3
      t.timestamp :publicationdate2
      t.datetime :deadlinedate2
      t.string :selectreq3, limit: 4
      t.decimal4 :valuesr
      t.decimal1 :valuesr
      t.string :modalitylus, limit: 1
      t.integer :numquotas
      t.integer :hrsperweek2
      t.decimal3 :payment2
      t.decimal1 :payment2

      t.timestamps
    end
  end
end

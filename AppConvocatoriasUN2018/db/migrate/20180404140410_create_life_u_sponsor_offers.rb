class CreateLifeUSponsorOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :life_u_sponsor_offers do |t|
      t.string :namelusoffer
      t.string :addressedto2, limit: 3
      t.timestamp :publicationdate2
      t.datetime :deadlinedate2
      t.string :selectreq3, limit: 4
      t.decimal :valuesr, :precision => 4, :scale => 1
      t.string :modalitylus, limit: 1
      t.integer :numquotas
      t.integer :hrsperweek2
      t.decimal :payment2, :precision => 3, :scale => 1

      t.timestamps
    end
  end
end

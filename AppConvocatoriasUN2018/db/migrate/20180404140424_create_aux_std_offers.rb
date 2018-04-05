class CreateAuxStdOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :aux_std_offers do |t|
      t.integer :idauxstdoffer
      t.string :nameauxstdoffer
      t.string :addressedto1, limit: 3
      t.timestamp :publicationdate1
      t.datetime :deadlinedate1
      t.string :typeoffer, limit: 1
      t.references :dependency, foreign_key: true
      t.string :selectreq1, limit: 4
      t.decimal4 :valuesr
      t.decimal1 :valuesr
      t.integer :hrsperweekavailability
      t.decimal3 :payment
      t.decimal1 :payment
      t.integer :durationlinkinweeks

      t.timestamps
    end
  end
end

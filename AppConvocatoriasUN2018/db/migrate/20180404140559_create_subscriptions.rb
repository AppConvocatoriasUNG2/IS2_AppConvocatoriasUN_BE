class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.belongs_to :subsoffer, foreign_key: true, polymorphic: true, index: true
      t.belongs_to :usersubs, foreign_key: true

      t.timestamps
    end
  end
end

class CreateDependencies < ActiveRecord::Migration[5.1]
  def change
    create_table :dependencies do |t|
      t.primary_key, :iddependecy
      t.string :namedependency

      t.timestamps
    end
  end
end

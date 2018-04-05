class CreateFileDocs < ActiveRecord::Migration[5.1]
  def change
    create_table :file_docs do |t|
      t.string :typefile, limit: 3
      t.string :namefile
      t.boolean :existfile
      t.references :filebelongsto, foreign_key: true

      t.timestamps
    end
  end
end

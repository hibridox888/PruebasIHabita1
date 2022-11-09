class CreateDocs < ActiveRecord::Migration[7.0]
  def change
    create_table :docs do |t|
      t.string :empresa
      t.string :tipo
      t.string :rut
      t.string :numero

      t.timestamps
    end
  end
end

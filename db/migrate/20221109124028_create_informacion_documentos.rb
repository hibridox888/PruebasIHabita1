class CreateInformacionDocumentos < ActiveRecord::Migration[7.0]
  def change
    create_table :informacion_documentos do |t|
      t.float :numero_documento
      t.date :fecha_emision
      t.date :fecha_vencimiento
      t.float :neto
      t.float :iva
      t.float :exento
      t.float :total
      t.references :empresa_emisora, null: false, foreign_key: true
      t.references :empresa_grupo, null: false, foreign_key: true
      t.references :tipo, null: false, foreign_key: true

      t.timestamps
    end
  end
end

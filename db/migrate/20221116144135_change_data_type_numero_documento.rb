class ChangeDataTypeNumeroDocumento < ActiveRecord::Migration[7.0]
  def change
    change_column :informacion_documentos, :numero_documento, :integer
  end
end

class AddColumnEstado < ActiveRecord::Migration[7.0]
  def change
    add_column :informacion_documentos, :estado, :string
  end
end

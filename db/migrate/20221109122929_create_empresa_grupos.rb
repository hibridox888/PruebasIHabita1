class CreateEmpresaGrupos < ActiveRecord::Migration[7.0]
  def change
    create_table :empresa_grupos do |t|
      t.string :nombre
      t.string :rut

      t.timestamps
    end
  end
end

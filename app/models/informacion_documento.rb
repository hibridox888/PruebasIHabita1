class InformacionDocumento < ApplicationRecord
  belongs_to :empresa_emisora
  belongs_to :empresa_grupo
  belongs_to :tipo
end

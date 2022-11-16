class InformacionDocumento < ApplicationRecord
  has_many :empresasEmi
  has_many :empresasGrup
  has_many :tipos
end

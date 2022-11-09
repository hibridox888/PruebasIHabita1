class Doc < ApplicationRecord
    validates :empresa, presence: true
    validates :tipo, presence: true
    validates :rut, presence: true
    validates :numero, presence: true
end

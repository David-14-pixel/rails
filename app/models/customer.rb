class Customer < ApplicationRecord
    has_many :sales
    validates :name, :presence => true, format: { with: /\A[a-zA-Z]+\z/,
    message: "solo permite letras" }
    validates :last_name, :presence => true, format: { with: /\A[a-zA-Z]+\z/,
    message: "solo permite letras" }
    validates :telephone, :presence => true, format: { with: /\A\d+\z/,
    message: "Solo se permite numeros"}
    validates :address, :presence => true

end

class User < ApplicationRecord
  belongs_to :city
  has_many :gossips

  validates :email, 
    uniqueness: {message: "Email déjà utilisé"}, 
    presence: {message: "Email obligatoire"}
  validates :password, 
    presence: true, 
    length: { minimum: 6 }
end

class Task < ApplicationRecord
    validates :firstname, presence: true, length: { maximum: 50 }
    validates :lastname, presence: true, length: { maximum: 50 }
    validates :phonenumber, presence: true, format: { with: /\A[0-9+\(\)#\.\s\/ext-]+\z/, message: "Invalid phone number format" }, length: { minimum: 10, maximum: 15 }

end
  
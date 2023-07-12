class Task < ApplicationRecord
    validates :firstname, presence: true, length: { maximum: 50 }
    validates :lastname, presence: true, length: { maximum: 50 }
    validates :phonenumber, presence: true, format: { with: /\A[0-9+\(\)#\.\s\/ext-]+\z/, message: "Invalid phone number format" }, length: { minimum: 10, maximum: 15 }
    validates :emailaddress, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, length: { maximum: 255 }
    validates :image, format: { with: /\.(png|jpg|jpeg|gif)\z/i, message: "Invalid image format" }, allow_blank: true
end
  


# task.rb
class Task < ApplicationRecord
    validates :firstname, presence: true, length: { maximum: 50 }
    validates :lastname, presence: true, length: { maximum: 50 }
    validates :phonenumber, presence: true, format: { with: /\A\d{10}\z/ }
    validates :emailaddress, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    # Additional validations for the `image` attribute if necessary
  end

class Task < ApplicationRecord
    validates :firstname, presence: true, length: { maximum: 50 }

end
  
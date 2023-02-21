class Pet < ApplicationRecord
  SPECIES = %w[dog cat fish owl stoat pig] 

  validates :name, :address, :found_on, :species, presence: true
  validates :species, inclusion: { in: SPECIES }
end

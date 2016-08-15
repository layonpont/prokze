class Agency < ActiveRecord::Base

  belongs_to :admin


  geocoded_by :address

  after_validation :geocode, if: :address_changed?

  validates :address, presence: true
end

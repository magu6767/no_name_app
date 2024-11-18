class Place < ApplicationRecord
  # # Geocoderの設定
  # geocoded_by :address
  # after_validation :geocode, if: :address_changed?
end

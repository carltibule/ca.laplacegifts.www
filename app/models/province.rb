class Province < ApplicationRecord
    validates :name, :postal_abbreviation, presence: true
    validates :gst, :hst, :pst, numericality: true, allow_blank: true
end

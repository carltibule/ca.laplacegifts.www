# frozen_string_literal: true
class Author < ApplicationRecord
    has_one_attached :image
    has_many :products
    
    # Get formatted version of author's name
    def name
      "#{last_name}, #{first_name} #{middle_name}"
    end

end

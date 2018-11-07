class Author < ApplicationRecord
    has_one_attached :image
    
    # Get formatted version of author's name
    def name
        return "#{last_name}, #{first_name} #{middle_name}"
    end
end

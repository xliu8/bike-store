class Category < ApplicationRecord
    has_many :products

    def self.ransackable_attributes(auth_object = nil)
        %w[category_name created_at updated_at id]
    end

end

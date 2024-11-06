class Brand < ApplicationRecord
    has_many :products

    def self.ransackable_attributes(auth_object = nil)
        %w[brand_name created_at updated_at id]
    end
end

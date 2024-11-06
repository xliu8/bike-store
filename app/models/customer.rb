class Customer < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["id", "first_name", "last_name", "email", "phone", "address", "created_at", "updated_at", "state", "zip_code"]
    end
end

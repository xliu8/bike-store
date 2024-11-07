class Product < ApplicationRecord
    belongs_to :brand
    belongs_to :category
  
    validates :product_name, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 0 }
    validates :stock_quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

    has_one_attached :image

    def self.ransackable_attributes(auth_object = nil)
      %w[product_name price stock_quantity model_year product_description available created_at updated_at image]
    end
  
    def self.ransackable_associations(auth_object = nil)
      %w[brand category]
    end
  end
  
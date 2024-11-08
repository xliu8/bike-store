class Page < ApplicationRecord
    has_rich_text :content
    def self.ransackable_attributes(auth_object = nil)
        ["title", "created_at", "updated_at"]
      end
    
      def self.ransackable_associations(auth_object = nil)
        ["rich_text_content"]
      end

end
  
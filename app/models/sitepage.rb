class Sitepage < ActiveRecord::Base
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    belongs_to :user 
    validates :title, presence: true
    validates :body, presence: true
    validates_uniqueness_of :user_id, message: "You can only have 1 sitepage"
end

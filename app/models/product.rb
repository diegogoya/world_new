class Product < ApplicationRecord
    	has_many :bids

	belongs_to :user

        has_attached_file :imageproduct, styles: {:medium => "300x300>", :thumb => "100x100>"}
        validates_attachment_content_type :imageproduct, :content_type => /\Aimage\/.*\z/ 

end

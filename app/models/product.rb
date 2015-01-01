class Product < ActiveRecord::Base
  belongs_to :category
  
  validates :name, presence: true
  validates :price, presence: true, numericality: {greater_than: 0}
  validates :category_id, presence: true
end

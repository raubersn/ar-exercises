class Store < ActiveRecord::Base
  has_many :employees
  
  validates :name, length: { minimum: 3 }  
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :store_must_carry_at_least_one_of_the_mens_or_womens_apparel

  def store_must_carry_at_least_one_of_the_mens_or_womens_apparel
    unless mens_apparel || womens_apparel
      errors.add(:mens_apparel, "must be carried by the store if Women's apparel is not")
    end
  end
end

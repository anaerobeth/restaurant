class MenuItem < ActiveRecord::Base
  CATEGORIES = %w{Seafood Pasta Vegetarian}

  has_many :comments,
    inverse_of: :menu_item

  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :price_in_cents
  validates_presence_of :category

  validates_inclusion_of :category, in: CATEGORIES

  def price_in_dollars
    (price_in_cents.to_f / 100).round(2)
  end
end

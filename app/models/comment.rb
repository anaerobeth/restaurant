class Comment < ActiveRecord::Base
  belongs_to :menu_item,
    inverse_of: :comments

  validates_presence_of :menu_item
  validates_presence_of :body
  validates_length_of :body, minimum: 16
end

class Text < ApplicationRecord
  belongs_to :message
   has_many :textanimations
     accepts_nested_attributes_for :textanimations
end

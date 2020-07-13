class Parent < ApplicationRecord
   has_many :children, -> { order(position: :asc) }
end

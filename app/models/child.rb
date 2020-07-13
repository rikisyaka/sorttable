class Child < ApplicationRecord
  belongs_to :parent
  acts_as_list scope: :parent
end

class Widget < ActiveRecord::Base
  validates :system_name, :uniqueness => true, :presence => true
end

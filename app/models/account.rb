class Account < ActiveRecord::Base
  self.inheritance_column = 'name'

  def self.names
    [nil, 'Bag', 'Container', 'Plant']
  end
end

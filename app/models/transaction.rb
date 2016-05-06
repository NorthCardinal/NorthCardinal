class Transaction < ActiveRecord::Base
  belongs_to :creditor_account, class_name: 'Account', foreign_key: 'creditor_account_id'
  
  belongs_to :debitor_account, class_name: 'Account', foreign_key: 'debitor_account_id'

end

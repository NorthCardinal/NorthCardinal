class Transaction < ActiveRecord::Base
  belongs_to :creditor_account,
    class_name: 'Account',
    foreign_key: 'creditor_account_id'

  validates :creditor_account, presence: true

  belongs_to :debitor_account,
    class_name: 'Account',
    foreign_key: 'debitor_account_id'

  validates :debitor_account, presence: true

  validates :amount, numericality: { greater_than: 0.0 }

end

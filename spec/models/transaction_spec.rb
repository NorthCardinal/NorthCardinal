require 'rails_helper'

RSpec.describe Transaction, type: :model do
  it { should belong_to :creditor_account }
  it { should belong_to :debitor_account }

  it { should validate_presence_of :creditor_account }
  it { should validate_presence_of :debitor_account }

  it { should validate_numericality_of(:amount).is_greater_than(0.0) }
end

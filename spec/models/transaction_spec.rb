require 'rails_helper'

RSpec.describe Transaction, type: :model do
  it { should belong_to :creditor_account }
  it { should belong_to :debitor_account }
end

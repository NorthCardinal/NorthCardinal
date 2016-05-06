json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :debitor_account_id, :creditor_account_id, :amount, :description
  json.url transaction_url(transaction, format: :json)
end

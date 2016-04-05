json.array!(@bankings) do |banking|
  json.extract! banking, :id, :bank_name, :bank_branch, :Account_number, :branch_code, :branch_description, :swift_code, :other_details, :email
  json.url banking_url(banking, format: :json)
end

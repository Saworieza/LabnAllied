json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :code, :description1, :description2, :warehouse_code, :inventory_warehouse, :inventory_groups, :HS_codes, :inventory_price, :quantity, :inventory_uom, :category
  json.url inventory_url(inventory, format: :json)
end

json.array!(@inventory_details) do |inventory_detail|
  json.extract! inventory_detail, :id, :inventory_code, :inventory_description, :warehouse_code, :inventory_warehouse, :inventory_groups, :HS_codes, :inventory_unit_price, :inventory_qty, :inventory_UoM, :inventory_category
  json.url inventory_detail_url(inventory_detail, format: :json)
end

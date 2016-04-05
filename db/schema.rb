# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160210041547) do

  create_table "bankings", force: :cascade do |t|
    t.string   "bank_name"
    t.string   "bank_branch"
    t.integer  "Account_number"
    t.integer  "branch_code"
    t.text     "branch_description"
    t.integer  "swift_code"
    t.text     "other_details"
    t.text     "email"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "bill_of_ladings", force: :cascade do |t|
    t.integer  "bl_number"
    t.date     "bl_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "business_classifications", force: :cascade do |t|
    t.string   "business_classification"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "business_types", force: :cascade do |t|
    t.text     "business_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "company_setups", force: :cascade do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "company_address"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "cost_setups", force: :cascade do |t|
    t.string   "cost_code"
    t.string   "cost_type"
    t.string   "cost_type_setup"
    t.decimal  "currency"
    t.decimal  "currency_rate"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "customs_service_departments", force: :cascade do |t|
    t.integer  "idf_form_nos"
    t.date     "payment_date"
    t.decimal  "rate"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.integer  "code"
    t.string   "sub_department"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "department_type"
  end

  create_table "file_informations", force: :cascade do |t|
    t.string   "file_number"
    t.date     "idf_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "insurances", force: :cascade do |t|
    t.string   "insurance_name"
    t.decimal  "total_insurance_charges"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "inventories", force: :cascade do |t|
    t.string   "code"
    t.string   "description1"
    t.string   "description2"
    t.integer  "warehouse_code"
    t.string   "inventory_warehouse"
    t.string   "inventory_groups"
    t.integer  "HS_codes"
    t.decimal  "inventory_price"
    t.decimal  "quantity"
    t.string   "inventory_uom"
    t.string   "category"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "inventory_details", force: :cascade do |t|
    t.integer  "inventory_code"
    t.text     "inventory_description"
    t.integer  "warehouse_code"
    t.string   "inventory_warehouse"
    t.string   "inventory_groups"
    t.integer  "HS_codes"
    t.decimal  "inventory_unit_price"
    t.integer  "inventory_qty"
    t.string   "inventory_UoM"
    t.string   "inventory_category"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "kentrades", force: :cascade do |t|
    t.decimal  "idf_document_fee"
    t.date     "payment_date"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "order_confirmations", force: :cascade do |t|
    t.text     "sellers_bankers"
    t.text     "buyers_bankers"
    t.integer  "IDF_No"
    t.text     "insurance_to_be"
    t.string   "mode_of_transport"
    t.string   "p_order_No"
    t.string   "proforma_nos"
    t.text     "terms_of_payment"
    t.string   "country_of_origin"
    t.string   "inspection_agency"
    t.string   "country_of_inspection"
    t.string   "country_of_supply"
    t.date     "shipment_date"
    t.string   "port_of_loading"
    t.string   "port_of_discharge"
    t.string   "final_destination"
    t.string   "shipping_marks_order_nos"
    t.string   "container_type"
    t.integer  "code"
    t.text     "item_description"
    t.text     "supplier_item_description"
    t.string   "HScode_No"
    t.decimal  "quantity"
    t.decimal  "unit_price"
    t.string   "total_amount_decimal"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "transport_setup_id"
    t.string   "sellers"
    t.integer  "inventory_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "shipment_id"
    t.integer  "file_information_id"
    t.string   "product"
    t.integer  "lots"
    t.decimal  "quantity"
    t.decimal  "price"
    t.decimal  "rate"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "orders", ["file_information_id"], name: "index_orders_on_file_information_id"
  add_index "orders", ["shipment_id"], name: "index_orders_on_shipment_id"

  create_table "ppbs", force: :cascade do |t|
    t.string   "UCR_Number"
    t.date     "application_date"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "proforma_invoices", force: :cascade do |t|
    t.string   "supplier_name"
    t.string   "proforma_invoice_nos"
    t.date     "pfi_date"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "shipments", force: :cascade do |t|
    t.boolean  "shared"
    t.string   "country_of_origin"
    t.string   "supplier"
    t.string   "supply_nature"
    t.integer  "custom_entry_nos"
    t.decimal  "custom_exchange_rate"
    t.decimal  "custom_value"
    t.string   "agent_inv_nos"
    t.decimal  "Quantity"
    t.decimal  "total_cost_usd"
    t.decimal  "total_freight_usd"
    t.decimal  "total_insurance_Kes"
    t.decimal  "total_idf_bal"
    t.decimal  "total_pre_idf"
    t.decimal  "total_railway_levy"
    t.decimal  "total_kaa_levy"
    t.decimal  "total_shipping_line_charges"
    t.decimal  "total_transport_from_msa"
    t.decimal  "total_port_handling_charges"
    t.decimal  "total_offloading_expenses"
    t.decimal  "total_bank_charges"
    t.decimal  "total_services_charges"
    t.decimal  "documents_handling_charges"
    t.decimal  "total_other_costs"
    t.boolean  "complete"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "simba_systems", force: :cascade do |t|
    t.string   "customs_entry_number"
    t.date     "customs_entry_date"
    t.decimal  "exchange_rate"
    t.decimal  "total_freight_usd"
    t.decimal  "total_insurance_Kes"
    t.decimal  "total_idf_bal"
    t.decimal  "total_pre_idf"
    t.decimal  "total_railway_levy"
    t.decimal  "total_kaa_levy"
    t.decimal  "total_shipping_line_charges"
    t.decimal  "total_transport_from_msa"
    t.decimal  "total_port_handling_charges"
    t.decimal  "total_offloading_expenses"
    t.decimal  "total_bank_charges"
    t.decimal  "total_services_charges"
    t.decimal  "documents_handling_charges"
    t.decimal  "total_other_costs"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "supplier_setups", force: :cascade do |t|
    t.string   "supplier_name"
    t.text     "description"
    t.text     "address"
    t.text     "banking_details"
    t.string   "bus_type"
    t.integer  "country_id"
    t.string   "country_name"
    t.integer  "bus_clasification"
    t.text     "notes"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "transport_setups", force: :cascade do |t|
    t.string   "transport_mode"
    t.string   "port_of_loading"
    t.string   "port_of_dischange"
    t.string   "final_destination"
    t.string   "clearing_agent"
    t.string   "container_type"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "role"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "phone"
    t.string   "username"
    t.text     "description"
    t.boolean  "admin",                  default: false
    t.integer  "department_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "version_associations", force: :cascade do |t|
    t.integer "version_id"
    t.string  "foreign_key_name", null: false
    t.integer "foreign_key_id"
  end

  add_index "version_associations", ["foreign_key_name", "foreign_key_id"], name: "index_version_associations_on_foreign_key"
  add_index "version_associations", ["version_id"], name: "index_version_associations_on_version_id"

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",                         null: false
    t.integer  "item_id",                           null: false
    t.string   "event",                             null: false
    t.string   "whodunnit"
    t.text     "object",         limit: 1073741823
    t.datetime "created_at"
    t.text     "object_changes", limit: 1073741823
    t.integer  "transaction_id"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  add_index "versions", ["transaction_id"], name: "index_versions_on_transaction_id"

end

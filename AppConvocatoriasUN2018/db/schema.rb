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

ActiveRecord::Schema.define(version: 20180405222754) do

  create_table "admin_users", primary_key: "idadminuser", force: :cascade do |t|
    t.string "admincharge", limit: 2
    t.string "emailadmin"
    t.string "fullnameadmin"
    t.string "encryptedPass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "applicant_users", primary_key: "idapplicantuser", force: :cascade do |t|
    t.integer "tiun"
    t.string "emailapplicant"
    t.string "fullnameapplicant"
    t.string "encryptedPassword"
    t.decimal "papaapplicant", precision: 2, scale: 1
    t.decimal "pbmapplicant", precision: 4, scale: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_applicant_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_applicant_users_on_reset_password_token", unique: true
  end

  create_table "aux_std_offers", force: :cascade do |t|
    t.string "nameauxstdoffer"
    t.string "addressedto1", limit: 3
    t.datetime "publicationdate1"
    t.datetime "deadlinedate1"
    t.string "typeoffer", limit: 1
    t.integer "dependency_id"
    t.string "selectreq1", limit: 4
    t.decimal "valuesr", precision: 4, scale: 1
    t.integer "hrsperweekavailability"
    t.decimal "payment", precision: 3, scale: 1
    t.integer "durationlinkinweeks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dependency_id"], name: "index_aux_std_offers_on_dependency_id"
  end

  create_table "dependencies", force: :cascade do |t|
    t.string "namedependency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "file_docs", force: :cascade do |t|
    t.string "typefile", limit: 3
    t.string "namefile"
    t.boolean "existfile"
    t.integer "filebelongsto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["filebelongsto_id"], name: "index_file_docs_on_filebelongsto_id"
  end

  create_table "life_u_sponsor_offers", force: :cascade do |t|
    t.string "namelusoffer"
    t.string "addressedto2", limit: 3
    t.datetime "publicationdate2"
    t.datetime "deadlinedate2"
    t.string "selectreq3", limit: 4
    t.decimal "valuesr", precision: 4, scale: 1
    t.string "modalitylus", limit: 1
    t.integer "numquotas"
    t.integer "hrsperweek2"
    t.decimal "payment2", precision: 3, scale: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mon_grant_offers", force: :cascade do |t|
    t.string "namemgoffer"
    t.string "addressedto3", limit: 3
    t.datetime "publicationdate3"
    t.datetime "deadlinedate3"
    t.string "selectreq2", limit: 4
    t.decimal "valuesr2", precision: 4, scale: 1
    t.integer "faculty_id"
    t.string "modalitymg", limit: 1
    t.string "acttype", limit: 1
    t.string "subjectM"
    t.integer "hrsperweek"
    t.integer "admin_user_id"
    t.string "stateoffer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_user_id"], name: "index_mon_grant_offers_on_admin_user_id"
    t.index ["faculty_id"], name: "index_mon_grant_offers_on_faculty_id"
  end

  create_table "soc_ec_support_offers", force: :cascade do |t|
    t.string "namesesoffer"
    t.string "addressedto4", limit: 3
    t.datetime "publicationdate4"
    t.datetime "deadlinedate4"
    t.string "selectreq4", limit: 4
    t.decimal "valuesr", precision: 4, scale: 1
    t.string "progtype", limit: 4
    t.integer "coresphrs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "susboffer_id"
    t.integer "usersubs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["susboffer_id"], name: "index_subscriptions_on_susboffer_id"
    t.index ["usersubs_id"], name: "index_subscriptions_on_usersubs_id"
  end

end

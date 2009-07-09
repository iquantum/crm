class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.string :prefix
      t.string :name_preference
      t.string :aka
      t.integer :status
      t.string :job_title
      t.integer :best_contact_method
      t.datetime :date_1
      t.datetime :date_2
      t.datetime :date_3
      t.datetime :date_4
      t.integer :company
      t.integer :division
      t.integer :manager
      t.integer :sponsor
      t.text :allergies_diet_restrictions
      t.text :notes
      t.string :bus_email
      t.string :bus_phone
      t.string :bus_phone_home_office
      t.string :bus_phone_alt
      t.string :bus_website
      t.string :bus_fax
      t.string :bus_cell
      t.string :bus_phone_intl
      t.string :bus_pager
      t.string :bus_address_1
      t.string :bus_address_2
      t.string :bus_address_3
      t.string :bus_city
      t.integer :bus_state
      t.string :bus_postal_code
      t.integer :bus_country
      t.string :bus_alt_billing_address
      t.string :bus_assistant_first_name
      t.string :bus_assistant_last_name
      t.string :bus_assistant_email
      t.string :bus_assistant_phone
      t.string :bus_assistant_fax
      t.string :per_email
      t.string :per_address
      t.string :per_city
      t.integer :per_state
      t.string :per_postal_code
      t.integer :per_country
      t.datetime :per_birthday
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
  end
  
  def self.down
    drop_table :contacts
  end
end

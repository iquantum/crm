class Contact < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :company, :division
end

require_relative '../config'

class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|
      t.string :title
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :state
      t.string :party
      t.string :email
      t.string :phone
      t.string :fax
      t.string :gender
      t.string :birthday
      t.string :website
      t.string :twitter_id
      t.integer :in_office
    end
  end

end


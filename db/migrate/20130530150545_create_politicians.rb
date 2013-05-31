require_relative '../config'

class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|
      t.string :title
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :state
      t.string :party
      t.string :phone
      t.string :fax
      t.string :gender
      t.string :birthdate
      t.string :website
      t.string :twitter_id
      t.integer :in_office
    end
  end

end


class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :street
      t.string :zipcode
      t.string :city
      t.string :email
      t.string :banknumber
      t.string :accountnumer

      t.timestamps
    end
  end
end

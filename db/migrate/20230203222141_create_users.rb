class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :vorname
      t.string :name
      t.hstore :adress
      t.string :email
      t.string :phone
      t.string :gender

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :name
      t.string :phone
      t.string :address
      t.string :gender
      t.string :avatar_url
      t.string :provider
      t.string :role, default: 1   # {0:admin, 1:user}
      t.string :email,              null: false, default: '', unique: true

      t.timestamps
    end
  end
end

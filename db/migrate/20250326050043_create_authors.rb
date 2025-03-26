class CreateAuthors < ActiveRecord::Migration[8.0]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.virtual :full_name, type: :string, as: "first_name || ' ' || last_name",stored: true
      t.timestamps
    end
  end
end

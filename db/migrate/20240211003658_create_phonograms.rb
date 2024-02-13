class CreatePhonograms < ActiveRecord::Migration[7.1]
  def change
    create_table :phonograms do |t|
      t.text :name
      t.text :sound
      t.text :level

      t.timestamps
    end
  end
end

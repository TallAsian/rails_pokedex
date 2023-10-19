class CreateTypeNames < ActiveRecord::Migration[7.1]
  def change
    create_table :type_name do |t|
      t.string :name

      t.timestamps
    end
  end
end
